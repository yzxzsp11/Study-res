`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:43:43 05/05/2015
// Design Name:   top
// Module Name:   D:/file2/topmodule/test.v
// Project Name:  topmodule
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

module test;

	// Inputs
	reg [4:0] Addr;
	reg [4:0] R_Addr_A;
	reg [4:0] R_Addr_B;
	reg Write_Reg;
	reg [31:0] Data;
	reg Clk;
	reg Reset;
	reg [2:0] ALU_OP;

	// Outputs
	wire ZF;
	wire OF;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.Addr(Addr), 
		.R_Addr_A(R_Addr_A), 
		.R_Addr_B(R_Addr_B), 
		.Write_Reg(Write_Reg), 
		.Data(Data), 
		.Clk(Clk), 
		.Reset(Reset), 
		.ALU_OP(ALU_OP), 
		.ZF(ZF), 
		.OF(OF)
	);


	initial begin
		// Initialize Inputs

		Addr = 2'b00001;
		R_Addr_A = 0;
		R_Addr_B = 0;
		Write_Reg = 1;
		Data = 32'h0012_1234;
		Reset = 0;
		ALU_OP = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		Addr = 0;
		R_Addr_A = 0;
		R_Addr_B = 0;
		Write_Reg = 1;
		Data = 32'hFF00_0000;
		Reset = 0;
		ALU_OP = 0;
		#100;
		Addr = 0;
		R_Addr_A = 0;
		R_Addr_B = 1;
		Write_Reg = 0;
		Data = 0;
		Reset = 0;
		ALU_OP = 0;
		// Add stimulus here

	end
initial begin
    		Clk = 0;
	forever #10 Clk=~Clk; 
	end
endmodule

