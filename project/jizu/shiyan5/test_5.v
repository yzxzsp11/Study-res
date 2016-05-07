`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:41:18 05/12/2015
// Design Name:   Top_Module
// Module Name:   D:/file2/shiyan5/test_5.v
// Project Name:  shiyan5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_Module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_5;

	// Inputs
	reg [7:2] Mem_Addr;
	reg [1:0] Choose;
	reg Mem_Write;
	reg Clk;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	Top_Module uut (
		.Mem_Addr(Mem_Addr), 
		.Choose(Choose), 
		.Mem_Write(Mem_Write), 
		.Clk(Clk), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		Mem_Addr =  2'b010001;
		Choose = 2'b11;
		Mem_Write = 1;

		// Wait 100 ns for global reset to finish
		#100;
		Mem_Addr = 2'b010000;
		Choose = 2'b10;
		Mem_Write = 1;
		#100;
		Mem_Addr = 2'b010001;
		Choose = 2'b00;
		Mem_Write = 0;
		#100;
		Mem_Addr = 2'b010001;
		Choose = 2'b01;
		Mem_Write = 0;
		#100;
		Mem_Addr = 2'b010001;
		Choose = 2'b10;
		Mem_Write = 0;
		#100;
		Mem_Addr = 2'b010001;
		Choose = 2'b11;
		Mem_Write = 0;
        
		// Add stimulus here

	end
   initial begin
    		Clk = 0;
	forever #10 Clk=~Clk; 
	end
endmodule

