`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:53:32 12/09/2015
// Design Name:   demo09
// Module Name:   D:/ISE/project/demo09/test.v
// Project Name:  demo09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo09
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
	reg D;
	reg PRE;
	reg CLR;
	reg CLK;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	demo09 uut (
		.D(D), 
		.PRE(PRE), 
		.CLR(CLR), 
		.CLK(CLK), 
		.Q(Q), 
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		PRE = 0;
		CLR = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		PRE = 1;CLR = 0;CLK = 0;D = 0;
		
		#100;
		PRE = 0;CLR = 1;CLK = 0;D = 0;
		
		#100;
		PRE = 1;CLR = 1;CLK = 0;D = 1;
		
		#100;
		PRE = 1;CLR = 1;D = 0;
		
		#100;
		PRE = 1;CLR = 1;D = 1;

	end
      
endmodule

