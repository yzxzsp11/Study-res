`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:22:52 05/20/2016
// Design Name:   TopTest
// Module Name:   G:/isefiles/RCPU/test.v
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

module test;

	// Inputs
	reg rst;
	reg clk;
	reg [2:0] SW;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	TopTest uut (
		.rst(rst), 
		.clk(clk), 
		.SW(SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		rst = 1;
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;

		rst = 0;
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 1;
		SW = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 0;
		SW = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

