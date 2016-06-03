`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:15:44 05/20/2016
// Design Name:   TopTest
// Module Name:   G:/isefiles/RCPU/ttttoptest.v
// Project Name:  RCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopTest
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ttttoptest;

	// Inputs
	reg clk_100MHz;
	reg rst;
	reg btn;
	reg [2:0] SW;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	TopTest uut (
		.clk_100MHz(clk_100MHz), 
		.rst(rst), 
		.btn(btn), 
		.SW(SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		clk_100MHz = 0;
		rst = 0;
		btn = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

