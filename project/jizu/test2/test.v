`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:25:26 03/25/2016
// Design Name:   test2
// Module Name:   D:/ISE/project/jizu/test2/test.v
// Project Name:  test2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test2
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
	reg [3:0] A;
	reg [3:0] B;
	reg C0;

	// Outputs
	wire C4;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	test2 uut (
		.A(A), 
		.B(B), 
		.C0(C0), 
		.C4(C4), 
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
		A = 4'b0000;B = 4'b0000;C0 = 0;
		#100;
		A = 4'b0001;B = 4'b0001;C0 = 1;
		#100;
		A = 4'b0010;B = 4'b0010;C0 = 1;
		#100;
		A = 4'b0100;B = 4'b0100;C0 = 1;
		#100;
		A = 4'b1000;B = 4'b1000;C0 = 1;
 
	end
      
endmodule

