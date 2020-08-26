transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {c:/intelfpga/18.1/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/UART {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/UART/uart_TX.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/UART {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/UART/uart_RX.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/UART {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/UART/posedgeDect.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/FP {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/FP/FP32_mult.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/FP {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/FP/FP32_add.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/RAM {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/RAM/RAM_32b_256.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PLL {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PLL/pll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/RAM {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/RAM/RAM_32b_result.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/par/db {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/par/db/pll_altpll.v}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/UART {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/UART/uart.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/Seg {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/Seg/seg_led_static.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PE {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PE/mult.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PE {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PE/MAC.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PE {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PE/FPmult.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PE {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PE/FPadd.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PE {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PE/accum.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/DFF {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/DFF/dff_32b.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/square_mpt_test.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/FSM_top {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/FSM_top/FSM.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PE {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PE/systolic_arr_ctrl.sv}
vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/rtl/PE {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/rtl/PE/systolic_arr.sv}

vlog -sv -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/5_ver_1.0/par/../sim/tb {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/5_ver_1.0/par/../sim/tb/top_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  top_tb

add wave *
view structure
view signals
run -all
