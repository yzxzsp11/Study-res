`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:57 12/23/2015
// Design Name:   demo11
// Module Name:   D:/ISE/project/demo11/test.v
// Project Name:  demo11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo11
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module test;

	// Inputs
	reg MR;
	reg Load;
	reg EN;
	reg CLK;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;
	wire CO;
	
	always
		#50 CLK=~CLK;
	// Instantiate the Unit Under Test (UUT)
	demo11 uut (
		.MR(MR), 
		.Load(Load), 
		.EN(EN), 
		.CLK(CLK), 
		.Q(Q), 
		.CO(CO), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		MR = 0;
		Load = 0;
		EN = 0;
		CLK=0;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		MR = 1;
		Load = 0;
		EN = 0;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 1;
		EN = 0;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		
		MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
			MR = 1;
		Load = 1;
		EN = 1;
		D = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule
