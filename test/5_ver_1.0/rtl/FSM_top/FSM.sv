`include "../param.vh"

/*
tested dimentions:
matrix A: should all pass
matrix W:
	h2w2: pass
	h2w4: pass
	h4w2: pass
	h4w4: pass
	h4w6: pass
	h6w4: pass
*/
module FSM (
	// global input
	input wire clk,
	input wire rst_n,
	
	// global I/O,
	output logic data_load_done,
	output logic fsm_working,
	input logic calc_done,
	
	// signal input
	input wire uart_tx_done,
	input wire uart_rx_done,
	input logic[7:0] uart_rx_data,
	
	// signal output
	output logic [7:0] ram_w0_addr,
	output logic [7:0] ram_w1_addr,
	output logic [7:0] ram_a0_addr,
	output logic [7:0] ram_a1_addr,
	
	input logic  [10:0] ram_c_addr[`N-1:0][`N-1:0],
	
	output logic ram_w0_wren,
	output logic ram_w1_wren,
	output logic ram_a0_wren,
	output logic ram_a1_wren,
	
	output logic[7:0] uart_tx_data,
	output logic uart_send_data,
	
	// data output
	output logic[31:0] fp_data,
	
	// others
	output logic[3:0] state_val	// for debug, feeds into seg display
);

`include "./FSM_wire_define.sv"

// seg display for debug
`include "./debug_seg.sv"

`include "./FSM_uart_data_load.sv"

`include "./FSM_counter_update.sv"

`include "./FSM_ram_interface_ctrl.sv"

`include "./FSM_body.sv"

endmodule
