`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:19 06/02/2015
// Design Name:   test
// Module Name:   D:/file2/shiyan8_change/test_inst.v
// Project Name:  shiyan8_change
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_inst;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [31:0] Inst_code;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.rst(rst), 
		.clk(clk), 
		.Inst_code(Inst_code)
	);

	initial begin
		// Initialize Inputs
		rst = 0;


		// Wait 100 ns for global reset to finish
		#10;
		rst=1;
		#20;
		rst=0;
		
        
		// Add stimulus here

	end
	initial begin
	clk=0;
	forever #10 clk=~clk;
	end
endmodule

