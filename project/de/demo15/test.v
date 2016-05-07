`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:00:04 12/23/2015
// Design Name:   demo15
// Module Name:   D:/ISE/project/demo15/test.v
// Project Name:  demo15
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo15
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
	reg OE;
	reg [1:0] S;
	reg CLK;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;
	always
		#50CLK=~CLK;
	// Instantiate the Unit Under Test (UUT)
	demo15 uut (
		.OE(OE), 
		.S(S), 
		.CLK(CLK), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		OE = 0;
		S = 0;
		CLK = 0;
		D = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		OE = 0;
		S = 2'b11;
		D = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 0;
		S = 2'b00;
		D = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;

		OE = 0;
		S = 2'b01;
		D = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 0;
		S = 2'b10;
		D = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 1;
		S = 2'b01;
		D = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 0;
		S = 2'b11;
		D = 4'b1110;

		// Wait 100 ns for global reset to finish
		#100;
	


	end
      
endmodule
