`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:19:08 06/05/2015
// Design Name:   CPU
// Module Name:   D:/file2/shiyan8_change/CPU_test.v
// Project Name:  shiyan8_change
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

module CPU_test;

	// Inputs
	reg [31:0] Inst_code;
	reg rst;
	reg clk;

	// Outputs
	wire [31:0] CPU_F;
	wire CPU_ZF;
	wire CPU_OF;
	wire [31:0] A;
	wire [31:0] B;
	wire [2:0] ALU_OP;
	wire [4:0] Addr;
	wire [31:0] Data;
	wire [31:0] F;
	wire OF;
	wire ZF;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.Inst_code(Inst_code), 
		.rst(rst), 
		.clk(clk), 
		.CPU_F(CPU_F), 
		.CPU_ZF(CPU_ZF), 
		.CPU_OF(CPU_OF), 
		.A(A), 
		.B(B), 
		.ALU_OP(ALU_OP), 
		.Addr(Addr), 
		.Data(Data), 
		.F(F), 
		.OF(OF), 
		.ZF(ZF)
	);

	initial begin
		// Initialize Inputs
	   rst=0;
		Inst_code=32'h0000_0000;
		// Wait 100 ns for global reset to finish
		#10;
		rst=1;
		Inst_code=32'h0000_0000;
		#20;
		rst=0;
		Inst_code=32'h0000_0827;
		#20;
		rst=0;
		Inst_code=32'h0000_0827;
        
		// Add stimulus here

	end
   initial begin
    		clk = 0;
	forever #10 clk=~clk; 
	end
      
endmodule

