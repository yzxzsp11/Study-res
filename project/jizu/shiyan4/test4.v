`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:36:08 05/04/2015
// Design Name:   jicunqi
// Module Name:   D:/file2/shiyan4/test4.v
// Project Name:  shiyan4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jicunqi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test4;

	// Inputs
	reg [4:0] Addr;
	reg Write_Reg;
	reg Clk;
	reg Reset;
	reg Read_Reg;
	reg [1:0] choose;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	jicunqi uut (
		.Addr(Addr), 
		.Write_Reg(Write_Reg), 
		.Clk(Clk), 
		.Reset(Reset), 
		.Read_Reg(Read_Reg), 
		.choose(choose), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		Addr = 0;
		Write_Reg = 0;
		Clk = 1;
		Reset = 0;
		Read_Reg = 0;
		choose = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Addr = 0;
		Write_Reg = 1;
		Clk = 0;
		Reset = 0;
		Read_Reg = 0;
		choose = 3;
		#100;
		Addr = 0;
		Write_Reg = 0;
		Clk = 1;
		Reset = 0;
		Read_Reg = 0;
		choose = 0;
		#100;
		Addr = 0;
		Write_Reg = 0;
		Clk =0 ;
		Reset = 0;
		Read_Reg = 0;
		choose = 1;
		#100;
		Addr = 0;
		Write_Reg = 0;
		Clk = 1;
		Reset = 0;
		Read_Reg = 0;
		choose = 0;
		#100;
		Addr = 0;
		Write_Reg = 0;
		Clk = 0;
		Reset = 0;
		Read_Reg = 0;
		choose = 2;
		#100;

	end
      
endmodule

