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
    xilinxcorelib_ver_m_00000000000277421008_3320314726_init();
    xilinxcorelib_ver_m_00000000001603977570_0538343943_init();
    work_m_00000000002489990758_0459436508_init();
    work_m_00000000003371891962_0273213086_init();
    work_m_00000000003658497049_0886308060_init();
    work_m_00000000003937726338_3508565487_init();
    work_m_00000000003568937853_1936691716_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003568937853_1936691716");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
