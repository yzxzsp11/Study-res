`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:01 04/14/2016
// Design Name:   Test_RigisterFile
// Module Name:   D:/work/ISE/RegisterFile4/test.v
// Project Name:  RegisterFile4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Test_RigisterFile
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
	reg [4:0] Addr;
	reg Write_Reg;
	reg [1:0] C1;
	reg C2;
	reg Clk;
	reg Reset;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	Test_RigisterFile uut (
		.Addr(Addr), 
		.Write_Reg(Write_Reg), 
		.C1(C1), 
		.C2(C2), 
		.Clk(Clk), 
		.Reset(Reset), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		Addr = 5'b01011;
		Write_Reg = 1;
		C1 = 2'b11;
		C2 = 0;
		Clk = 0;
		Reset = 0;
		#50;
		
		Addr = 5'b01011;
		Write_Reg = 1;
		C1 = 2'b11;
		C2 = 0;
		Clk = 1;
		Reset = 0;
		#50;
		
		Addr = 5'b01011;
		Write_Reg = 0;
		C1 = 2'b00;
		C2 = 1;
		Clk = 0;
		Reset = 0;
		#50;
		
		Addr = 5'b01011;
		Write_Reg = 0;
		C1 = 2'b00;
		C2 = 1;
		Clk = 1;
		Reset = 0;
		#50;
  

	end
      
endmodule

