`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:29:20 12/23/2015
// Design Name:   demo12
// Module Name:   D:/ISE/project/demo12/test.v
// Project Name:  demo12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo12
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
	reg EN;
	reg CLK;

	// Outputs
	wire [3:0] Q;
	wire CO;
	
	always
	 #50CLK=~CLK;
	// Instantiate the Unit Under Test (UUT)
	demo12 uut (
		.MR(MR), 
		.EN(EN), 
		.CLK(CLK), 
		.Q(Q), 
		.CO(CO)
	);

	initial begin
		// Initialize Inputs
		MR = 0;
		EN = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		MR = 1;
		EN = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		EN = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		EN = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		EN = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		EN = 1;
		
		#100
		// Wait 100 ns for global reset to finish
		MR = 1;
		EN = 1;
		#100
		MR = 1;
		EN = 1;
		#100
		MR = 0;
		EN = 0;

	end
      
endmodule


