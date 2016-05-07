`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:29:59 06/09/2015
// Design Name:   top
// Module Name:   D:/file2/shiyan9/top_test_2.v
// Project Name:  shiyan9
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

module top_test_2;

	// Inputs
	reg rst;
	reg clk;
	reg [3:0] SW;

	// Outputs
	wire [7:0] LED;
	wire [31:0] CPU_F;
	wire CPU_ZF;
	wire CPU_OF;
	wire [31:0] A;
	wire [31:0] B;
	wire [2:0] ALU_OP;
	wire [4:0] Addr;
	wire [31:0] Data;
	wire [31:0] Inst_code;
	wire [4:0] R_Addr_A;
	wire [4:0] R_Addr_B;
	wire [31:0] Mem_R_Data;

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
		.Data(Data), 
		.Inst_code(Inst_code), 
		.R_Addr_A(R_Addr_A), 
		.R_Addr_B(R_Addr_B), 
		.Mem_R_Data(Mem_R_Data)
	);

		initial begin
		// Initialize Inputs
	   rst=0;
		SW=0;
		// Wait 100 ns for global reset to finish
		#10;
		rst=1;
		SW=0;
		#20;
		rst=0;
		SW=0;
        
		// Add stimulus here

	end
   initial begin
    		clk = 0;
	forever #10 clk=~clk; 
	end
      
endmodule


