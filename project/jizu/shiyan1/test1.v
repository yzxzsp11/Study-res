`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:49:29 04/11/2015
// Design Name:   shiyan1
// Module Name:   D:/file2/shiyan1/test1.v
// Project Name:  shiyan1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire F;
	wire C1;

	// Instantiate the Unit Under Test (UUT)
	shiyan1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.F(F), 
		.C1(C1)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 0;
		B = 0;
		C = 1;
		#100;
		A = 0;
		B = 1;
		C = 0;
		#100;
		A = 0;
		B = 1;
		C = 1;
		#100;
		A = 1;
		B = 0;
		C = 0;
		#100;
		A = 1;
		B = 0;
		C = 1;
		#100;
		A = 1;
		B = 1;
		C = 0;
		#100;
		A = 1;
		B = 1;
		C = 1;
		#100;
		

	end
      
endmodule

