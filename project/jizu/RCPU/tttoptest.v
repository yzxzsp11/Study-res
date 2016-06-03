`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:17:22 05/20/2016
// Design Name:   BTN_OK
// Module Name:   G:/isefiles/RCPU/tttoptest.v
// Project Name:  RCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BTN_OK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tttoptest;

	// Inputs
	reg clk_100MHz;
	reg BTN;

	// Outputs
	wire BTN_Out;

	// Instantiate the Unit Under Test (UUT)
	BTN_OK uut (
		.clk_100MHz(clk_100MHz), 
		.BTN(BTN), 
		.BTN_Out(BTN_Out)
	);

	initial begin
		// Initialize Inputs
		clk_100MHz = 0;
		BTN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

