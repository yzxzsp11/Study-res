`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:25:12 06/04/2015
// Design Name:   top
// Module Name:   D:/file2/shiyan8_change/test_top.v
// Project Name:  shiyan8_change
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_top;

	// Inputs
	reg rst;
	reg clk;
	reg [2:0] SW;
	reg LED;

	// Outputs
	wire [31:0] CPU_F;
	wire CPU_ZF;
	wire CPU_OF;
	wire [31:0] A;
	wire [31:0] B;
	wire [2:0] ALU_OP;
	wire [4:0] Addr;
	wire [31:0] Data;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.rst(rst), 
		.clk(clk), 
		.SW(SW), 
		.LED(LED), 
		.CPU_F(CPU_F), 
		.CPU_ZF(CPU_ZF), 
		.CPU_OF(CPU_OF), 
		.A(A), 
		.B(B), 
		.ALU_OP(ALU_OP), 
		.Addr(Addr), 
		.Data(Data)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;
		SW = 0;
		LED = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

