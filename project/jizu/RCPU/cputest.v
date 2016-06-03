`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:31:43 05/21/2016
// Design Name:   CPU
// Module Name:   G:/isefiles/RCPU/Cputest.v
// Project Name:  RCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Cputest;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire ZF;
	wire OF;
	wire [31:0] ALU_F;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.rst(rst), 
		.clk(clk), 
		.ZF(ZF), 
		.OF(OF), 
		.ALU_F(ALU_F)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;

		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;

		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;

		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;

		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;

		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;

		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;

		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#10;



	end
      
endmodule

