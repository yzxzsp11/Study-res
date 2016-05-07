`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:41:18 12/09/2015
// Design Name:   demo08
// Module Name:   D:/ISE/project/demo08/test.v
// Project Name:  demo08
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo08
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
	reg R;
	reg S;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	demo08 uut (
		.R(R),
		.S(S), 
		.Q(Q),
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
		R = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		S = 0;R = 1;
		
		#100;
		S = 0;R = 0;
		
		#100;
		S = 0;R = 1;
		
		#100;
		S = 1;R = 0;
		
		#100;
		S = 1;R = 1;
	end
      
endmodule

