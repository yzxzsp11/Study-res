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
static const char *ng0 = "D:/ISE/project/jizu/shiyan3/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};
static int ng9[] = {1, 0};
static unsigned int ng10[] = {7U, 0U};



static void Always_32_0(char *t0)
{
    char t10[8];
    char t42[8];
    char t47[16];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);

LAB24:    xsi_set_current_line(35, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1208U);
    t9 = *((char **)t7);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t7 = (t8 + 4);
    t14 = (t9 + 4);
    t15 = (t10 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB25;

LAB26:
LAB27:    t41 = (t0 + 1768);
    xsi_vlogvar_assign_value(t41, t10, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t7) == 0)
        goto LAB28;

LAB30:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB31:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB9:    xsi_set_current_line(36, ng0);

LAB32:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB33;

LAB34:
LAB35:    t23 = (t0 + 1768);
    xsi_vlogvar_assign_value(t23, t10, 0, 0, 32);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB39;

LAB37:    if (*((unsigned int *)t7) == 0)
        goto LAB36;

LAB38:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB39:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB11:    xsi_set_current_line(37, ng0);

LAB40:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB41;

LAB42:
LAB43:    t14 = (t0 + 1768);
    xsi_vlogvar_assign_value(t14, t10, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB47;

LAB45:    if (*((unsigned int *)t7) == 0)
        goto LAB44;

LAB46:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB47:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB13:    xsi_set_current_line(38, ng0);

LAB48:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t42) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t42 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB49;

LAB50:
LAB51:    memset(t10, 0, 8);
    t23 = (t10 + 4);
    t24 = (t42 + 4);
    t37 = *((unsigned int *)t42);
    t38 = (~(t37));
    *((unsigned int *)t10) = t38;
    *((unsigned int *)t23) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB53;

LAB52:    t45 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t45 & 4294967295U);
    t46 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t46 & 4294967295U);
    t41 = (t0 + 1768);
    xsi_vlogvar_assign_value(t41, t10, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB57;

LAB55:    if (*((unsigned int *)t7) == 0)
        goto LAB54;

LAB56:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB57:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB15:    xsi_set_current_line(39, ng0);

LAB58:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB62;

LAB60:    if (*((unsigned int *)t7) == 0)
        goto LAB59;

LAB61:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB62:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t47, 33, t3, 32, t4, 32);
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t47, 0, 0, 33);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t8 = (t4 + 8);
    t9 = (t4 + 12);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t10) = t13;
    t16 = *((unsigned int *)t9);
    t17 = (t16 >> 0);
    t18 = (t17 & 1);
    *((unsigned int *)t7) = t18;
    t14 = (t0 + 2248);
    t15 = (t14 + 56U);
    t23 = *((char **)t15);
    memset(t42, 0, 8);
    t24 = (t42 + 4);
    t41 = (t23 + 4);
    t19 = *((unsigned int *)t23);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t42) = t21;
    t22 = *((unsigned int *)t41);
    t25 = (t22 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t24) = t26;
    t27 = *((unsigned int *)t10);
    t28 = *((unsigned int *)t42);
    t29 = (t27 ^ t28);
    *((unsigned int *)t48) = t29;
    t49 = (t10 + 4);
    t50 = (t42 + 4);
    t51 = (t48 + 4);
    t30 = *((unsigned int *)t49);
    t31 = *((unsigned int *)t50);
    t32 = (t30 | t31);
    *((unsigned int *)t51) = t32;
    t35 = *((unsigned int *)t51);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB63;

LAB64:
LAB65:    t52 = (t0 + 2088);
    xsi_vlogvar_assign_value(t52, t48, 0, 0, 1);
    goto LAB23;

LAB17:    xsi_set_current_line(40, ng0);

LAB66:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB70;

LAB68:    if (*((unsigned int *)t7) == 0)
        goto LAB67;

LAB69:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB70:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_minus(t47, 33, t3, 32, t4, 32);
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t47, 0, 0, 33);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t8 = (t4 + 8);
    t9 = (t4 + 12);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t10) = t13;
    t16 = *((unsigned int *)t9);
    t17 = (t16 >> 0);
    t18 = (t17 & 1);
    *((unsigned int *)t7) = t18;
    t14 = (t0 + 2248);
    t15 = (t14 + 56U);
    t23 = *((char **)t15);
    memset(t42, 0, 8);
    t24 = (t42 + 4);
    t41 = (t23 + 4);
    t19 = *((unsigned int *)t23);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t42) = t21;
    t22 = *((unsigned int *)t41);
    t25 = (t22 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t24) = t26;
    t27 = *((unsigned int *)t10);
    t28 = *((unsigned int *)t42);
    t29 = (t27 ^ t28);
    *((unsigned int *)t48) = t29;
    t49 = (t10 + 4);
    t50 = (t42 + 4);
    t51 = (t48 + 4);
    t30 = *((unsigned int *)t49);
    t31 = *((unsigned int *)t50);
    t32 = (t30 | t31);
    *((unsigned int *)t51) = t32;
    t35 = *((unsigned int *)t51);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB71;

LAB72:
LAB73:    t52 = (t0 + 2088);
    xsi_vlogvar_assign_value(t52, t48, 0, 0, 1);
    goto LAB23;

LAB19:    xsi_set_current_line(41, ng0);

LAB74:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t48, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB76;

LAB75:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB76;

LAB79:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB77;

LAB78:    memset(t42, 0, 8);
    t14 = (t48 + 4);
    t11 = *((unsigned int *)t14);
    t12 = (~(t11));
    t13 = *((unsigned int *)t48);
    t16 = (t13 & t12);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB80;

LAB81:    if (*((unsigned int *)t14) != 0)
        goto LAB82;

LAB83:    t23 = (t42 + 4);
    t18 = *((unsigned int *)t42);
    t19 = *((unsigned int *)t23);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB84;

LAB85:    t21 = *((unsigned int *)t42);
    t22 = (~(t21));
    t25 = *((unsigned int *)t23);
    t26 = (t22 || t25);
    if (t26 > 0)
        goto LAB86;

LAB87:    if (*((unsigned int *)t23) > 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t42) > 0)
        goto LAB90;

LAB91:    memcpy(t10, t41, 8);

LAB92:    t49 = (t0 + 1768);
    xsi_vlogvar_assign_value(t49, t10, 0, 0, 32);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB96;

LAB94:    if (*((unsigned int *)t7) == 0)
        goto LAB93;

LAB95:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB96:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB21:    xsi_set_current_line(42, ng0);

LAB97:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB101;

LAB99:    if (*((unsigned int *)t7) == 0)
        goto LAB98;

LAB100:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB101:    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB25:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t10) = (t21 | t22);
    t23 = (t8 + 4);
    t24 = (t9 + 4);
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t37 & t35);
    t38 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t38 & t36);
    t39 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t39 & t35);
    t40 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t40 & t36);
    goto LAB27;

LAB28:    *((unsigned int *)t10) = 1;
    goto LAB31;

LAB33:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB35;

LAB36:    *((unsigned int *)t10) = 1;
    goto LAB39;

LAB41:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    goto LAB43;

LAB44:    *((unsigned int *)t10) = 1;
    goto LAB47;

LAB49:    t21 = *((unsigned int *)t42);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t42) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB51;

LAB53:    t39 = *((unsigned int *)t10);
    t40 = *((unsigned int *)t24);
    *((unsigned int *)t10) = (t39 | t40);
    t43 = *((unsigned int *)t23);
    t44 = *((unsigned int *)t24);
    *((unsigned int *)t23) = (t43 | t44);
    goto LAB52;

LAB54:    *((unsigned int *)t10) = 1;
    goto LAB57;

LAB59:    *((unsigned int *)t10) = 1;
    goto LAB62;

LAB63:    t37 = *((unsigned int *)t48);
    t38 = *((unsigned int *)t51);
    *((unsigned int *)t48) = (t37 | t38);
    goto LAB65;

LAB67:    *((unsigned int *)t10) = 1;
    goto LAB70;

LAB71:    t37 = *((unsigned int *)t48);
    t38 = *((unsigned int *)t51);
    *((unsigned int *)t48) = (t37 | t38);
    goto LAB73;

LAB76:    t9 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB78;

LAB77:    *((unsigned int *)t48) = 1;
    goto LAB78;

LAB80:    *((unsigned int *)t42) = 1;
    goto LAB83;

LAB82:    t15 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB83;

LAB84:    t24 = ((char*)((ng9)));
    goto LAB85;

LAB86:    t41 = ((char*)((ng2)));
    goto LAB87;

LAB88:    xsi_vlog_unsigned_bit_combine(t10, 32, t24, 32, t41, 32);
    goto LAB92;

LAB90:    memcpy(t10, t24, 8);
    goto LAB92;

LAB93:    *((unsigned int *)t10) = 1;
    goto LAB96;

LAB98:    *((unsigned int *)t10) = 1;
    goto LAB101;

}


extern void work_m_00000000002566748701_0886308060_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000002566748701_0886308060", "isim/test3_isim_beh.exe.sim/work/m_00000000002566748701_0886308060.didat");
	xsi_register_executes(pe);
}
