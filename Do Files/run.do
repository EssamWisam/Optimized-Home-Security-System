vsim -gui work.logic_hw
# End time: 23:01:42 on Jan 02,2022, Elapsed time: 0:01:14
# Errors: 0, Warnings: 1
# vsim -gui work.logic_hw 
# Start time: 23:01:42 on Jan 02,2022
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.logic_hw(a_logic_hw)
add wave -position insertpoint sim:/logic_hw/clk
add wave -position insertpoint sim:/logic_hw/rst
add wave -position insertpoint sim:/logic_hw/inp
add wave -position insertpoint sim:/logic_hw/outp
force -freeze sim:/logic_hw/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/logic_hw/rst 1 0
run
force -freeze sim:/logic_hw/rst 0 0
force -freeze sim:/logic_hw/inp 1000000000 0
run
run
run
run
run
run
run
force -freeze sim:/logic_hw/inp 1100000000 0
run
run
run
run
run
run
force -freeze sim:/logic_hw/inp 0011000000 0
run
run
run
run
force -freeze sim:/logic_hw/inp 0000000000 0
run
run
force -freeze sim:/logic_hw/inp 0000111111 0
run
run

