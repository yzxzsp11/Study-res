`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:20 05/21/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [2:0] ALU_OP,
    input [31:0] A,
    input [31:0] B,
	 output reg ZF,
	 output reg OF,
	 output reg [31:0] F
    );
	 
	 reg C32;//jin wei
	 
	 always@(*)
	 begin
	 OF = 1'b0;
	 C32 = 1'b0;
	 	case(ALU_OP)
			3'b000: F = A & B; 
			3'b001: F = A | B;
			3'b010: F = A ^ B;
			3'b011: F = ~(A | B);
			3'b100: begin {C32, F} = A + B; OF = A[31] ^ B[31] ^ F[31] ^ C32; end
			3'b101: begin {C32, F} = A - B; OF = A[31] ^ B[31] ^ F[31] ^ C32; end
			3'b110: F = A < B ? 1 : 0;
			3'b111: F = B << A;
		endcase
		ZF = ~(|F);
	 end

endmodule

