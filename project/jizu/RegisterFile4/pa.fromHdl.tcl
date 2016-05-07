
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name RegisterFile4 -dir "D:/work/ISE/RegisterFile4/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Test_RigisterFile.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {RegisterFile.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Test_RigisterFile.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Test_RigisterFile $srcset
add_files [list {Test_RigisterFile.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
