`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:42 11/17/2015 
// Design Name: 
// Module Name:    demo01 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module demo01(A,B,C,D,E,F);
	input A,B,C,D,E;
	output F;
	
	wire A,B,C,D,E;
	//reg F;
	
	//结构
	wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
	and u1(s1,A,B),
		 u2(s2,C,D),
		 u3(s3,C,E),
	    u4(s4,D,E),
		 u5(s5,C,D,E),
		 u8(s8,s1,s6),
		 u10(s10,s7,s9);
	or u6(s6,C,D,E),
		u7(s7,A,B),
		u9(s9,s2,s3,s4),
		u11(F,s5,s8,s10);
		
	//数据流
	//assign F = ((A&B)&(C|D|E))|((A|B)&((C&D)|(C&E)|(D&E)))|(C&D&E);
	
	//行为
	/*always@(A,B,C,D,E)
	if((A&&B&&C)||(A&&B&&D)||(A&&B&&E)||(A&&C&&D)||(A&&C&&E)||(A&&D&&E)||(B&&C&&D)||(B&&C&&E)||(B&&D&&E)||(C&&D&&E))
		F=1;
	else
		F=0;*/

endmodule
