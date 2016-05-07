`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:16 05/21/2015 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(input rst,input clk,input [1:0]SW,output reg [7:0]led
    );
wire [31:0]inst_code;
Inst	My_CPU(clk,rst,inst_code);

always @(*)
		begin 			case(SW)
				2'b00: begin led = inst_code[7:0]; end
				2'b01: begin led= inst_code[15:8]; end
				2'b10: begin led = inst_code[23:16]; end
				2'b11: begin led = inst_code[31:24]; end
			endcase
		end


endmodule
