
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name RCPU -dir "G:/isefiles/RCPU/planAhead_run_2" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "TopTest.ucf" [current_fileset -constrset]
add_files [list {ipcore_dir/Ins_ROM.ngc}]
set hdlfile [add_files [list {Register.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/Ins_ROM.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ALU.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {CPU.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {BTN_OK.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {TopTest.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top TopTest $srcset
add_files [list {TopTest.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/Ins_ROM.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
