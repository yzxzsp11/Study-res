`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:59 05/15/2016
// Design Name:   ALU
// Module Name:   G:/isefiles/RCPU/TestALU.v
// Project Name:  RCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestALU;

	// Inputs
	reg [2:0] ALU_OP;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire ZF;
	wire OF;
	wire [31:0] F;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALU_OP(ALU_OP), 
		.A(A), 
		.B(B), 
		.ZF(ZF), 
		.OF(OF), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		ALU_OP = 3'b100;
		A = 32'hFFFF_FFFF;
		B = 32'hFFFF_FFFF;
		#100;
      
ALU_OP = 3'b101;
		A = 32'h0FFF_FFFF;
		B = 32'hFFFF_FFFF;
		#100;		
		// Add stimulus here

	end
      
endmodule

