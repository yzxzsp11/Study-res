`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:56:05 11/17/2015
// Design Name:   demo01
// Module Name:   D:/ISE/project/demo01/test.v
// Project Name:  demo01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo01
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
	reg C;
	reg D;
	reg E;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	demo01 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;B = 0;C = 0;D = 0;E = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		A = 0;B = 0;C = 0;D = 0;E = 1;
		
		#100;
		A = 0;B = 0;C = 0;D = 1;E = 1;
		
		#100;
		A = 0;B = 0;C = 1;D = 1;E = 1;
		
		#100;
		A = 0;B = 1;C = 1;D = 1;E = 1;
		
		#100;
		A = 0;B = 1;C = 0;D = 1;E = 0;
		
		#100;
		A = 1;B = 0;C = 1;D = 0;E = 1;
		
		#100;
		A = 1;B = 0;C = 0;D = 0;E = 0;
		
		#100;
		A = 1;B = 1;C = 0;D = 0;E = 0;
		
		#100;
		A = 1;B = 1;C = 1;D = 0;E = 0;
		
		#100;
		A = 1;B = 1;C = 1;D = 1;E = 1;

	end
      
endmodule
