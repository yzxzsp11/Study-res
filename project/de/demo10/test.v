`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:59 12/16/2015
// Design Name:   demo10
// Module Name:   D:/ISE/project/demo10/test.v
// Project Name:  demo10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo10
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
	reg J;
	reg K;
	reg CLK;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	demo10 uut (
		.J(J), 
		.K(K), 
		.CLK(CLK), 
		.Q(Q), 
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		J = 0;K = 0;CLK = 1;
		
		#100;
		J = 0;K = 1;CLK = 0;
		
		#100;
		J = 1;K = 0;CLK = 1;
		
		#100;
		J = 1;K = 1;CLK = 0;
		
		#100;
		J = 0;K = 0;CLK = 1;
		
		#100;
		J = 1;K = 0;CLK = 0;
		

	end
      
endmodule

