
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name demo02 -dir "D:/ISE/project/demo02/planAhead_run_2" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "demo02_C.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {demo02.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top demo02 $srcset
add_files [list {demo02_C.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
