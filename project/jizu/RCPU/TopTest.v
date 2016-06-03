`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:59 05/14/2016 
// Design Name: 
// Module Name:    TopTest 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module TopTest(
    input rst,
    input btn,
	 input clk_100MHz,
    input [2:0] SW,
    output reg [7:0] LED
    );
	  
	 wire ZF, OF;
	 wire [31:0] ALU_F;
	 
	 BTN_OK btn_ok(clk_100MHz, btn, clk);
	 
	 CPU cpu(rst, clk, ZF, OF, ALU_F);
	 
	 always@(*)
	 begin
		case(SW)
			3'b000: LED = ALU_F[7:0];
			3'b001: LED = ALU_F[15:8];
			3'b010: LED = ALU_F[23:16];
			3'b011: LED = ALU_F[31:24];
			default: begin LED[7] = ZF; LED[0] = OF; LED[6:1] = 6'b0; end
		endcase
	 end

endmodule
