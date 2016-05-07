/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/file2/shiyan9/top.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};
static int ng10[] = {7, 0};
static int ng11[] = {0, 0};
static int ng12[] = {6, 0};
static int ng13[] = {1, 0};



static void Always_39_0(char *t0)
{
    char t4[8];
    char t16[8];
    char t28[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    int t27;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;
    int t35;

LAB0:    t1 = (t0 + 5088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 5408);
    *((int *)t2) = 1;
    t3 = (t0 + 5120);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 15U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);

LAB6:    t14 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t14, 4);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB23;

LAB24:
LAB26:
LAB25:    xsi_set_current_line(51, ng0);

LAB35:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng10)));
    xsi_vlog_generic_convert_bit_index(t16, t7, 2, t14, 32, 1);
    t17 = (t16 + 4);
    t8 = *((unsigned int *)t17);
    t15 = (!(t8));
    if (t15 == 1)
        goto LAB36;

LAB37:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng11)));
    xsi_vlog_generic_convert_bit_index(t16, t7, 2, t14, 32, 1);
    t17 = (t16 + 4);
    t8 = *((unsigned int *)t17);
    t15 = (!(t8));
    if (t15 == 1)
        goto LAB38;

LAB39:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4168);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng12)));
    t17 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t16, t28, t29, ((int*)(t7)), 2, t14, 32, 1, t17, 32, 1);
    t18 = (t16 + 4);
    t8 = *((unsigned int *)t18);
    t15 = (!(t8));
    t19 = (t28 + 4);
    t9 = *((unsigned int *)t19);
    t27 = (!(t9));
    t30 = (t15 && t27);
    t26 = (t29 + 4);
    t10 = *((unsigned int *)t26);
    t31 = (!(t10));
    t32 = (t30 && t31);
    if (t32 == 1)
        goto LAB40;

LAB41:
LAB27:    goto LAB2;

LAB7:    xsi_set_current_line(42, ng0);
    t17 = (t0 + 1528U);
    t18 = *((char **)t17);
    memset(t16, 0, 8);
    t17 = (t16 + 4);
    t19 = (t18 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (t20 >> 0);
    *((unsigned int *)t16) = t21;
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 0);
    *((unsigned int *)t17) = t23;
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 & 255U);
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 255U);
    t26 = (t0 + 4168);
    xsi_vlogvar_assign_value(t26, t16, 0, 0, 8);
    goto LAB27;

LAB9:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 8);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 8);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t16, 0, 0, 8);
    goto LAB27;

LAB11:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 16);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 16);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t16, 0, 0, 8);
    goto LAB27;

LAB13:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 24);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 24);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t16, 0, 0, 8);
    goto LAB27;

LAB15:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t16, 0, 0, 8);
    goto LAB27;

LAB17:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 8);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 8);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t16, 0, 0, 8);
    goto LAB27;

LAB19:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 16);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 16);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t16, 0, 0, 8);
    goto LAB27;

LAB21:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1688U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 24);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 24);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t16, 0, 0, 8);
    goto LAB27;

LAB23:    xsi_set_current_line(50, ng0);

LAB28:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 3608U);
    t5 = *((char **)t3);
    t3 = (t0 + 4168);
    t6 = (t0 + 4168);
    t7 = (t6 + 72U);
    t14 = *((char **)t7);
    t17 = ((char*)((ng10)));
    xsi_vlog_generic_convert_bit_index(t16, t14, 2, t17, 32, 1);
    t18 = (t16 + 4);
    t8 = *((unsigned int *)t18);
    t27 = (!(t8));
    if (t27 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3768U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng11)));
    xsi_vlog_generic_convert_bit_index(t16, t7, 2, t14, 32, 1);
    t17 = (t16 + 4);
    t8 = *((unsigned int *)t17);
    t15 = (!(t8));
    if (t15 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4168);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng12)));
    t17 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t16, t28, t29, ((int*)(t7)), 2, t14, 32, 1, t17, 32, 1);
    t18 = (t16 + 4);
    t8 = *((unsigned int *)t18);
    t15 = (!(t8));
    t19 = (t28 + 4);
    t9 = *((unsigned int *)t19);
    t27 = (!(t9));
    t30 = (t15 && t27);
    t26 = (t29 + 4);
    t10 = *((unsigned int *)t26);
    t31 = (!(t10));
    t32 = (t30 && t31);
    if (t32 == 1)
        goto LAB33;

LAB34:    goto LAB27;

LAB29:    xsi_vlogvar_assign_value(t3, t5, 0, *((unsigned int *)t16), 1);
    goto LAB30;

LAB31:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t16), 1);
    goto LAB32;

LAB33:    t11 = *((unsigned int *)t29);
    t33 = (t11 + 0);
    t12 = *((unsigned int *)t16);
    t13 = *((unsigned int *)t28);
    t34 = (t12 - t13);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t3, t2, t33, *((unsigned int *)t28), t35);
    goto LAB34;

LAB36:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t16), 1);
    goto LAB37;

LAB38:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t16), 1);
    goto LAB39;

LAB40:    t11 = *((unsigned int *)t29);
    t33 = (t11 + 0);
    t12 = *((unsigned int *)t16);
    t13 = *((unsigned int *)t28);
    t34 = (t12 - t13);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t3, t2, t33, *((unsigned int *)t28), t35);
    goto LAB41;

}


extern void work_m_00000000000526160090_3823007873_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_00000000000526160090_3823007873", "isim/top_test_2_isim_beh.exe.sim/work/m_00000000000526160090_3823007873.didat");
	xsi_register_executes(pe);
}
