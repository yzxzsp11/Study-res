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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_00000000001358910285_1420689212_init();
    xilinxcorelib_ver_m_00000000001687936702_1862936372_init();
    xilinxcorelib_ver_m_00000000000277421008_2243265159_init();
    xilinxcorelib_ver_m_00000000001603977570_3302549558_init();
    work_m_00000000002489990758_2499224580_init();
    work_m_00000000000753884940_1985558087_init();
    work_m_00000000002860544888_0132798949_init();
    work_m_00000000002566748701_0886308060_init();
    xilinxcorelib_ver_m_00000000000277421008_2343620650_init();
    xilinxcorelib_ver_m_00000000001603977570_1282505482_init();
    work_m_00000000000403262735_1948799799_init();
    work_m_00000000001123900001_3508565487_init();
    work_m_00000000000526160090_3823007873_init();
    work_m_00000000003002313517_0208706463_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003002313517_0208706463");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
