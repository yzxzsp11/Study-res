`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:46:27 03/25/2016
// Design Name:   test1
// Module Name:   D:/ISE/project/jizu/test1/test.v
// Project Name:  test1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test1
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
	reg A;
	reg B;
	reg C0;

	// Outputs
	wire C1;
	wire F;

	// Instantiate the Unit Under Test (UUT)
	test1 uut (
		.A(A), 
		.B(B), 
		.C0(C0), 
		.C1(C1), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		A = 0;B = 0;C0 = 0;
		#100;
		A = 0;B = 0;C0 = 1;
		#100;
		A = 0;B = 1;C0 = 0;
		#100;
		A = 0;B = 1;C0 = 1;
		#100;
		A = 1;B = 0;C0 = 0;
		#100;
		A = 1;B = 0;C0 = 1;
		#100;
		A = 1;B = 1;C0 = 0;
		#100;
		A = 1;B = 1;C0 = 1;
	

	end
      
endmodule

