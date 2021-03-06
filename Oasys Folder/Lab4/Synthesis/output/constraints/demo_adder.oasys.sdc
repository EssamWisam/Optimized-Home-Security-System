#
# Created by 
#   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 11:06:22 2022
# (C) Mentor Graphics Corporation
#
set_units -time ns -capacitance ff -resistance kohm -power nW -voltage V -current mA
create_clock -period 1 -waveform {0 0.5} -name vsysclk 
create_clock -period 1 -waveform {0 0.5} -name clk [get_ports clk]
set_false_path -from [get_ports rst]
group_path -name I2R -from [list [get_ports {inp[0]}] [get_ports {inp[1]}] [get_ports {inp[2]}] [get_ports {inp[3]}] [get_ports {inp[4]}] [get_ports {inp[5]}] [get_ports {inp[6]}] [get_ports {inp[7]}] [get_ports {inp[8]}] [get_ports {inp[9]}] [get_ports rst] [get_ports clk]]
group_path -name I2O -from [list [get_ports {inp[0]}] [get_ports {inp[1]}] [get_ports {inp[2]}] [get_ports {inp[3]}] [get_ports {inp[4]}] [get_ports {inp[5]}] [get_ports {inp[6]}] [get_ports {inp[7]}] [get_ports {inp[8]}] [get_ports {inp[9]}] [get_ports rst] [get_ports clk]]  -to [list [get_ports {disp[0]}] [get_ports {disp[1]}] [get_ports {disp[2]}] [get_ports {outp[0]}] [get_ports {outp[1]}] [get_ports {outp[2]}] [get_ports {outp[3]}] [get_ports {outp[4]}] [get_ports {outp[5]}]]
group_path -name R2O -to [list [get_ports {disp[0]}] [get_ports {disp[1]}] [get_ports {disp[2]}] [get_ports {outp[0]}] [get_ports {outp[1]}] [get_ports {outp[2]}] [get_ports {outp[3]}] [get_ports {outp[4]}] [get_ports {outp[5]}]]
set_load 10 [get_ports {outp[5]}]
set_load 10 [get_ports {outp[4]}]
set_load 10 [get_ports {outp[3]}]
set_load 10 [get_ports {outp[2]}]
set_load 10 [get_ports {outp[1]}]
set_load 10 [get_ports {outp[0]}]
set_load 10 [get_ports {disp[2]}]
set_load 10 [get_ports {disp[1]}]
set_load 10 [get_ports {disp[0]}]
set_input_transition 0.1 [get_ports clk]
set_input_transition 0.1 [get_ports rst]
set_input_transition 0.1 [get_ports {inp[9]}]
set_input_transition 0.1 [get_ports {inp[8]}]
set_input_transition 0.1 [get_ports {inp[7]}]
set_input_transition 0.1 [get_ports {inp[6]}]
set_input_transition 0.1 [get_ports {inp[5]}]
set_input_transition 0.1 [get_ports {inp[4]}]
set_input_transition 0.1 [get_ports {inp[3]}]
set_input_transition 0.1 [get_ports {inp[2]}]
set_input_transition 0.1 [get_ports {inp[1]}]
set_input_transition 0.1 [get_ports {inp[0]}]
set_input_delay 0.7 [get_ports clk]
set_input_delay 0.7 [get_ports rst]
set_input_delay 0.7 [get_ports {inp[9]}]
set_input_delay 0.7 [get_ports {inp[8]}]
set_input_delay 0.7 [get_ports {inp[7]}]
set_input_delay 0.7 [get_ports {inp[6]}]
set_input_delay 0.7 [get_ports {inp[5]}]
set_input_delay 0.7 [get_ports {inp[4]}]
set_input_delay 0.7 [get_ports {inp[3]}]
set_input_delay 0.7 [get_ports {inp[2]}]
set_input_delay 0.7 [get_ports {inp[1]}]
set_input_delay 0.7 [get_ports {inp[0]}]
set_output_delay 0.3 -clock clk [get_ports {outp[5]}]
set_output_delay 0.3 -clock clk [get_ports {outp[4]}]
set_output_delay 0.3 -clock clk [get_ports {outp[3]}]
set_output_delay 0.3 -clock clk [get_ports {outp[2]}]
set_output_delay 0.3 -clock clk [get_ports {outp[1]}]
set_output_delay 0.3 -clock clk [get_ports {outp[0]}]
set_output_delay 0.3 -clock clk [get_ports {disp[2]}]
set_output_delay 0.3 -clock clk [get_ports {disp[1]}]
set_output_delay 0.3 -clock clk [get_ports {disp[0]}]
set_operating_conditions  -library  [get_libs {NangateOpenCellLibrary}] -max  typical
