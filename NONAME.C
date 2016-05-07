#include<stdio.h>
#include<stdlib.h>
#include<dos.h>

/* tcb thread state */
#define FINISHED 0
#define RUNNING  1
#define READY    2
#define BLOCKED  3

/* some must params */
#define GET_INDOS 0X34
#define GET_CRIT_ERR 0X5d06           /* save address of indos */
char far *indos_ptr=0;                /* save address of crit_err */
char far *crit_err_ptr=0;

typedef int(far *codeptr)(void);	/* 20 bit address */
void interrupt(*old_int8)(void);    /* get old INT_08H's cpu runtime */

/* some global params */
#define NTCB  8    /* number of TCBS*/
#define NPOOL 3    /* size of p-c data pool*/
#define NBUF  5    /* size of buffer */
#define NTEXT 10   /* size of buffer text */
#define TL    2    /* time limit of cpu runtime */

/* message struct */
struct buffer{
	int sender;
	int size;
	char text[NTEXT];
	struct buffer *next;
} buf[NBUF];

/* semaphore struct */
typedef struct{
	int value;
	struct TCB *next;
} semaphore;

/* TCB struct */
struct TCB{
	/* base params */
	unsigned char *stack;
	unsigned ss,sp;
	int state;
	char name[10];

	struct TCB *next;

	struct buffer *mq;   /* head pointer of message buffer queue */
	semaphore mutex;
	semaphore full;
} tcb[NTCB];

struct int_regs{
	unsigned bp,di,si,ds,es,dx,cx,bx,ax,ip,cs,flags,off,seg;
};

/* base params */
int current;
int timecount = 0;

/* c-p params */
int poolNum = 0;
semaphore mutex = {1,NULL};
semaphore empty = {NPOOL,NULL};
semaphore full = {0,NULL};

/* some buffer params */
int bufNum = 0;
semaphore bufMutex = {1,NULL};
semaphore bufEmpty = {NBUF,NULL};

void initDos(void);
int dosBusy(void);
void tcbState(void);
int finished(void);
void initTcb(void);
void myDelay(long times);

void create(char *name,codeptr code,int stck);
void destory(int id);
void over(void);

int find(void);
void interrupt switchThreads(void);
void interrupt new_int8(void);

void block(struct TCB **p);
void wakeup(struct TCB **p);
void p(semaphore *sem);
void v(semaphore *sem);
void destoryAllThreads(void);

void initBuf(void);
void send(char *receiver,char *message,int size);
int receive(char *sender,char *message);
void insert(struct buffer **mq,struct buffer *buff);

/**
 * show all tcb state
 */
void tcbState(void){
	int i;
	for(i=0;i<NTCB;i++){
		switch(tcb[i].state){
			case 0:
				printf("The state of tcb[%d](%s) is finished\n",i,tcb[i].name);
				break;
			case 1:
				printf("The state of tcb[%d](%s) is running\n",i,tcb[i].name);
				break;
			case 2:
				printf("The state of tcb[%d](%s) is ready\n",i,tcb[i].name);
				break;
			case 3:
				printf("The state of tcb[%d](%s) is blocked\n",i,tcb[i].name);
				break;
			default:break;
		}
	}
}

/**
 * judge all threads is finish
 * @return 1 or 0
 */
int finished(){
	int i;
	for(i=1;i<NTCB;i++){
		if(tcb[i].state != FINISHED && tcb[i].state != BLOCKED){
			return 0;
		}
	}
	return 1;
}

/**
 * init dos
 */
void initDos(void){

	union REGS regs;
	struct SREGS segregs;
	regs.h.ah = GET_INDOS;
	intdosx(&regs,&regs,&segregs);
	indos_ptr = MK_FP(segregs.es,regs.x.bx);  /* get intdos's real address */
	if(_osmajor<3){
		crit_err_ptr = indos_ptr+1;
	}else if(_osmajor==3 && _osminor==0){
		crit_err_ptr = indos_ptr-1;
	}else{
		regs.x.ax = GET_CRIT_ERR;
		intdosx(&regs,&regs,&segregs);
		crit_err_ptr = MK_FP(segregs.ds,regs.x.si);
	}
}

/**
 * judge the dos isBusy
 * @return 1 or 0
 */
int dosBusy(void){
	if(indos_ptr && crit_err_ptr){
		return (*indos_ptr || *crit_err_ptr);
	}else{
		return -1;
	}
}

/**
 * init tcbs
 */
void initTcb(void){
	int i;
	for(i=0;i<NTCB;i++){
		tcb[i].stack = NULL;
		tcb[i].state = FINISHED;
		tcb[i].name[0] = '\0';
		tcb[i].next = NULL;

		tcb[i].mq = NULL;
		tcb[i].mutex.value = 1;
		tcb[i].full.value = 0;
	}
}

/**
 * custom delay
 * @param times the dealy times
 */
void myDelay(long times){
	int i = 0;
	while(i++<times);
}

/**
 * create thread
 * @param name: thread's name
 * @param code: thread's code address
 * @param stck: thread's stack length
 */
void create(char *name,codeptr code,int stck){
	int i;
	char *p;
	struct int_regs *pt;

	for(i=1;i<NTCB;i++){
		if(tcb[i].state == FINISHED)
			break;
	}
	if(i == NTCB){
		return;
	}

	p = (char *)malloc(sizeof(char) *stck);
	pt = (struct int_regs *)(p+stck-1);
	pt--;

	/* the range of codes */
	pt->cs = FP_SEG(code);
	pt->ip = FP_OFF(code);
	/* the top and base of stack*/
	tcb[i].ss = FP_SEG(pt);
	tcb[i].sp = FP_OFF(pt);

	/* return address */
	pt->seg = FP_SEG(over);
	pt->off = FP_OFF(over);
	/* the range of datas */
	pt->ds = _DS;
	pt->es = _ES;

	pt->flags = 0X200;

	strcpy(tcb[i].name,name);
	tcb[i].state = READY;
	tcb[i].next = NULL;
}

/**
 * destory thread by
 * @param id: thread's id
 */
void destory(int id){
	if(tcb[id].state == FINISHED){
		return;
	}

	disable();
	free(tcb[id].stack);
	tcb[id].stack = NULL;
	tcb[id].state = FINISHED;
	tcb[id].next = NULL;
	enable();
}

/**
 * when thread finish task,destory it and switch
 */
void over(){
	destory(current);
	switchThreads();
}

/**
 * find next ready thread
 */
int find(void){
	int i;
	i = current+1;
	while(i != current){
		if(tcb[i].state == READY)
			break;
		if(i == NTCB){
			i = 1;
		}else{
			i++;
		}
	}

	if(i == current){
		if(finished())
			return 0;
	}
	return i;
}

/**
 * switch threads
 */
void interrupt switchThreads(void){
	int i;
	disable();
	tcb[current].ss = _SS;
	tcb[current].sp = _SP;
	if(tcb[current].state == RUNNING){
		tcb[current].state = READY;
	}
	i = find();
	_SS = tcb[i].ss;
	_SP = tcb[i].sp;
	tcb[i].state = RUNNING;
	current = i;
	timecount = 0;
	enable();
}

/**
 * the custom new_int8
 * @return None
 */
void interrupt new_int8(void){
	(*old_int8)();
	/* if cpu runtime arrive and dos not busy,do switch */
	if(++timecount >= TL){
		if(!dosBusy()){
			switchThreads();
		}else{
			return;
		}
	}
}

/**
 * destory all threads
 */
void destoryAllThreads(void){
	int i;
	for(i=1;i<NTCB;i++){
		if(tcb[i].state != FINISHED){
			free(tcb[i].stack);
			tcb[i].stack = NULL;
			tcb[i].state = FINISHED;
		}
	}
}

/**
 * block the thread
 * @param p: block thread
 */
void block(struct TCB **p){
	struct TCB *t;
	tcb[current].state = BLOCKED;
	if((*p) == NULL){
		(*p) = &tcb[current];
	}else{
		t = *p;
		while(t->next != NULL){
			t = t->next;
		}
		t->next = &tcb[current];
	}
}

/**
 * P control
 * @param sem: the object to p
 */
void p(semaphore *sem){
	struct TCB **qp;
	disable();
	/*if a thread malloc all res, block it and switch other thread */
	sem->value = sem->value-1;
	if(sem->value < 0){
		qp = &(sem->next);
		block(qp);
		enable();
		switchThreads();
	}
	enable();
}

/**
 * wakeup the first thread of waking queue
 * @param p: the wakeup thread
 */
void wakeup(struct TCB **p){

	struct TCB *t;
	t = *p;
	if((*p) != NULL){
		t->state = READY;
	}
	(*p) = (*p)->next;
	t->next = NULL;
}

/**
 * V control
 * @param sem: the object to v
 */
void v(semaphore *sem){
	struct TCB **qp;
	disable();
	qp = &(sem->next);
	sem->value = sem->value+1;
	if(sem->value <= 0){
		wakeup(qp);
	}
	enable();
}

/**
 * test function
 */
void f(void){
	printf("Hello! Mr.Yang");
	printf("\n");
}

/**
 * init bufs
 */
void initBuf(void){
	int i;
	for(i=0;i<NBUF;i++){
		buf[i].sender = -1;
		buf[i].size = 0;
		buf[i].text[0] = '\0';
		buf[i].next = NULL;
	}
}

/**
 * insert message into thread message-queue rear
 * @param mq: thread message-queue
 * @param buff: the message
 */
void insert(struct buffer **mq,struct buffer *buff){
	struct buffer *temp;
	if(*mq == NULL){
		*mq = buff;
	}else{
		temp = *mq;
		while(temp->next != NULL){
			temp = temp->next;
		}
		temp->next = buff;
	}
}

/**
 * send one message
 * @param receiver: receiver thread'name
 * @param message: the message to send
 * @param size: the message size
 */
void send(char *receiver,char *message,int size){
	struct buffer *temp;
	int i,now,id = -1;

	disable();
	for(i=1;i<NTCB;i++){
		if(strcmp(receiver,tcb[i].name) == 0){
			id = i;
			break;
		}
	}
	if(id == -1){
		enable();
		return;
	}
	if(tcb[i].state == FINISHED) return;

	p(&bufEmpty);
	p(&bufMutex);
	for(i=0;i<NBUF;i++){
		if(buf[i].size == 0){
			now = i;
			break;
		}
	}

	bufNum++;
	buf[now].sender = current;
	buf[now].size = size;
	buf[now].next = NULL;
	for(i=0;i<size;i++,message++){
		buf[now].text[i] = *message;
	}
	v(&bufMutex);

	p(&tcb[id].mutex);
	insert(&(tcb[id].mq),&buf[now]);
	v(&tcb[id].mutex);
	v(&tcb[id].full);

	enable();
}

/**
 * get message from thread message-queue
 * @param mq: thread message-queue
 * @param sender: the sender
 * return message or null
 */
struct buffer *remov(struct buffer **mq,int sender){
	struct buffer *temp,*s;
	temp = *mq;
	if(temp->sender == sender){
		s = temp;
		(*mq) = (*mq)->next;
	}else{
		while(temp->next != NULL && temp->next->sender != sender){
			temp = temp->next;
		}
		s = temp->next;
		if(s != NULL){
			temp->next = s->next;
		}
	}
	return s;
}

/**
 * get message from thread message-queue
 * @param sender: the sender of message
 * @param message: get message
 * return message size
 */
int receive(char *sender,char *message){
	int i,id,size;
	struct buffer *getBuffer;
	id = -1;
	size = 0;
	for(i=1;i<NTCB;i++){
		if(strcmp(sender,tcb[i].name) == 0){
			id = i;
			break;
		}
	}
	if(id == -1) return size;

	p(&tcb[current].mutex);
	getBuffer = remov(&(tcb[current].mq),id);
	v(&tcb[current].mutex);
	if(getBuffer == NULL) return size;

	size = getBuffer->size;
	strcpy(message,getBuffer->text);

	/* free buf */
	p(&bufMutex);
	bufNum--;
	getBuffer->sender = -1;
	getBuffer->size = 0;
	getBuffer->next = NULL;
	getBuffer->text[0] = '\0';
	v(&bufMutex);
	v(&bufEmpty);

	return size;
}

/**
 * producer produces
 */
void producer(void){
	int i;
	/* a thread can produce 5 data */
	for(i=0;i<5;i++){
		p(&empty);
		p(&mutex);
		poolNum++;
		printf("producer[%s] +1 data, and now pool have %d data\n",tcb[current].name,poolNum);
		v(&mutex);
		v(&full);
	}
}

/**
 * consumer consumes
 */
void consumer(void){
	while(1){
		p(&full);
		p(&mutex);
		poolNum--;
		printf("consumer[%s] -1 data, and now pool have %d data\n",tcb[current].name,poolNum);
		v(&mutex);
		v(&empty);
	}
}

/**
 * sender to send message
 */
void sender(void){
	int i,count1,count2;
	char str[] = "Hello";
	for(i=1;i<=8;i++){
		myDelay(1000);
		if(i%2){
			send("r1",str,strlen(str));
			count1 = tcb[2].full.value;
			printf("%s send one message to r1, now r1 have %d message\n",tcb[current].name,count1);
		}else{
			send("r2",str,strlen(str));
			count2 = tcb[5].full.value;
			printf("%s send one message to r2, now r2 have %d meassage\n",tcb[current].name,count2);
		}
	}
}

/**
 * receiver receive message
 */
void receiver(void){
	int i,size;
	char res[NTEXT];
	size = 0;
	while(1){
		myDelay(2000);
		p(&tcb[current].full);
		for(i=1;i<NTCB;i++){
			size = receive(tcb[i].name,res);
			if(size != 0){
				printf("%s get %s say:%s, now have %d message\n",tcb[current].name,tcb[i].name,res,tcb[current].full.value);
				size = 0;
				res[0] = '\0';
				break;
			}
		}
	}
}

/**
 * main thread
 */
void main(void) {
	freopen("out.txt","w",stdout);

	initDos();
	initTcb();
	old_int8 = getvect(8);
	setvect(8,new_int8);

	/* create 0# thread */
	strcpy(tcb[0].name, "main");
	tcb[0].state = RUNNING;
	current = 0;

	/* test f() */
	system("cls");
	printf("test f()\n");
	create("f", (codeptr)f, 1024);
	switchThreads();
	tcbState();
	destoryAllThreads();
	printf("\n");

	/* producer and consumer */
	printf("\nstart p-c\n");
	create("c1", (codeptr)consumer, 1024);
	create("p1", (codeptr)producer, 1024);
	create("p2", (codeptr)producer, 1024);
	create("c2", (codeptr)consumer, 1024);
	create("p3", (codeptr)producer, 1024);
	create("c3", (codeptr)consumer, 1024);
	create("p4", (codeptr)producer, 1024);
	switchThreads();
	tcbState();
	destoryAllThreads();
	printf("\n");

	/* start connect */
	printf("\nstart connect\n");
	create("s1", (codeptr)sender, 1024);
	create("r1", (codeptr)receiver, 1024);
	create("s2", (codeptr)sender, 1024);
	create("s3", (codeptr)sender, 1024);
	create("r2", (codeptr)receiver, 1024);
	create("s4", (codeptr)sender, 1024);
	create("s5", (codeptr)sender, 1024);
	switchThreads();
	tcbState();
	destoryAllThreads();

	setvect(8, old_int8);
	printf("\nEnd\n");
	getchar();
}