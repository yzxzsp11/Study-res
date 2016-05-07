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
static const char *ng0 = "D:/work/ISE/RegisterFile4/Test_RigisterFile.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {1543U, 0U};
static unsigned int ng7[] = {4294967295U, 0U};
static unsigned int ng8[] = {286331444U, 0U};



static void Always_32_0(char *t0)
{
    char t6[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    int t34;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2888);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 5);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t2) == 0)
        goto LAB6;

LAB8:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;

LAB9:    t5 = (t6 + 4);
    t12 = *((unsigned int *)t5);
    t13 = (~(t12));
    t14 = *((unsigned int *)t6);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(67, ng0);

LAB43:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);

LAB44:    t2 = ((char*)((ng2)));
    t34 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t34 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng3)));
    t34 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t34 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng4)));
    t34 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t34 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng5)));
    t34 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t34 == 1)
        goto LAB51;

LAB52:
LAB53:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(40, ng0);

LAB13:    xsi_set_current_line(42, ng0);
    t18 = (t0 + 1528U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t19 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (~(t20));
    t22 = *((unsigned int *)t19);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB17;

LAB15:    if (*((unsigned int *)t18) == 0)
        goto LAB14;

LAB16:    t25 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t25) = 1;

LAB17:    t26 = (t17 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t17);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(54, ng0);

LAB32:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 5);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);

LAB33:    t2 = ((char*)((ng2)));
    t34 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t34 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng3)));
    t34 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t34 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng4)));
    t34 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t34 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng5)));
    t34 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t34 == 1)
        goto LAB40;

LAB41:
LAB42:
LAB20:    goto LAB12;

LAB14:    *((unsigned int *)t17) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(43, ng0);

LAB21:    xsi_set_current_line(44, ng0);
    t32 = (t0 + 1048U);
    t33 = *((char **)t32);
    t32 = (t0 + 2888);
    xsi_vlogvar_assign_value(t32, t33, 0, 0, 5);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);

LAB22:    t2 = ((char*)((ng2)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t34 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng3)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t34 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng4)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t34 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng5)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t34 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB20;

LAB23:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t18 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t18);
    t10 = (t9 >> 0);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 255U);
    t19 = (t0 + 2568);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 8);
    goto LAB31;

LAB25:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t18 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 8);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t18);
    t10 = (t9 >> 8);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 255U);
    t19 = (t0 + 2568);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 8);
    goto LAB31;

LAB27:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t18 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 16);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t18);
    t10 = (t9 >> 16);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 255U);
    t19 = (t0 + 2568);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 8);
    goto LAB31;

LAB29:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t18 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 24);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t18);
    t10 = (t9 >> 24);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 255U);
    t19 = (t0 + 2568);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 8);
    goto LAB31;

LAB34:    xsi_set_current_line(57, ng0);
    t5 = (t0 + 2168U);
    t18 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t19 = (t18 + 4);
    t7 = *((unsigned int *)t18);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 255U);
    t25 = (t0 + 2568);
    xsi_vlogvar_assign_value(t25, t6, 0, 0, 8);
    goto LAB42;

LAB36:    xsi_set_current_line(58, ng0);
    t5 = (t0 + 2168U);
    t18 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t19 = (t18 + 4);
    t7 = *((unsigned int *)t18);
    t8 = (t7 >> 8);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 8);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 255U);
    t25 = (t0 + 2568);
    xsi_vlogvar_assign_value(t25, t6, 0, 0, 8);
    goto LAB42;

LAB38:    xsi_set_current_line(59, ng0);
    t5 = (t0 + 2168U);
    t18 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t19 = (t18 + 4);
    t7 = *((unsigned int *)t18);
    t8 = (t7 >> 16);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 16);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 255U);
    t25 = (t0 + 2568);
    xsi_vlogvar_assign_value(t25, t6, 0, 0, 8);
    goto LAB42;

LAB40:    xsi_set_current_line(60, ng0);
    t5 = (t0 + 2168U);
    t18 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t19 = (t18 + 4);
    t7 = *((unsigned int *)t18);
    t8 = (t7 >> 24);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 24);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 255U);
    t25 = (t0 + 2568);
    xsi_vlogvar_assign_value(t25, t6, 0, 0, 8);
    goto LAB42;

LAB45:    xsi_set_current_line(69, ng0);
    t18 = ((char*)((ng5)));
    t19 = (t0 + 2728);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    goto LAB53;

LAB47:    xsi_set_current_line(70, ng0);
    t18 = ((char*)((ng6)));
    t19 = (t0 + 2728);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    goto LAB53;

LAB49:    xsi_set_current_line(71, ng0);
    t18 = ((char*)((ng7)));
    t19 = (t0 + 2728);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    goto LAB53;

LAB51:    xsi_set_current_line(72, ng0);
    t18 = ((char*)((ng8)));
    t19 = (t0 + 2728);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    goto LAB53;

}


extern void work_m_00000000002852947603_4109433537_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000002852947603_4109433537", "isim/test_isim_beh.exe.sim/work/m_00000000002852947603_4109433537.didat");
	xsi_register_executes(pe);
}
