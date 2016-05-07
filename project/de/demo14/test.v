`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:46:25 12/23/2015
// Design Name:   demo14
// Module Name:   D:/ISE/project/demo14/test.v
// Project Name:  demo14
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo14
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
	reg CLR;
	reg CLK;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;
	always
		#50CLK=~CLK;

	// Instantiate the Unit Under Test (UUT)
	demo14 uut (
		.OE(OE), 
		.CLR(CLR), 
		.CLK(CLK), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		OE = 0;
		CLR = 0;
		CLK = 0;
		D = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		OE = 0;
		CLR = 0;
		D = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 0;
		CLR = 0;
		D = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 1;
		CLR = 0;
		D = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 0;
		CLR = 1;
		D =4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 0;
		CLR = 0;
		D = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
		OE = 0;
		CLR = 0;
		D = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule
