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

vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/wrfifo.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/rdfifo.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/pll_clk.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/sdram_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/sdram_para.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/sdram_fifo_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/sdram_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram_test.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram_rw_test.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/led_disp.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/par/db {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/par/db/pll_clk_altpll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/sdram_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/sdram_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Shuai/OneDrive\ -\ UW-Madison/fumpy/test/com_test/rtl/sdram {C:/Users/Shuai/OneDrive - UW-Madison/fumpy/test/com_test/rtl/sdram/sdram_cmd.v}

