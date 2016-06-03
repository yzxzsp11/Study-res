`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:48 05/14/2016 
// Design Name: 
// Module Name:    CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CPU(
    input rst,
    input clk,
	 output ZF,
	 output OF,
    output [31:0] ALU_F
    );
	 
	 reg [31:0] PC, PC_New;  
	 reg [2:0] ALU_OP; //cao zuo shu 
	 reg Write_Reg;  
	 
	 wire [31:0] Inst_code;
	 wire [31:0] R_Data_A, R_Data_B;
	 
	 wire [5:0] OP, func;
	 wire [4:0] rd, rs, rt, shamt;
	 // R 
	 assign OP = Inst_code[31:26];
	 assign rs = Inst_code[25:21];
	 assign rt = Inst_code[20:16];
	 assign rd = Inst_code[15:11];
	 assign shamt = Inst_code[10:6];
	 assign func = Inst_code[5:0];
	 
	 Ins_ROM ins_rom (
	 .clka(clk), // input clka
	 .addra(PC[7:2]), // input [5 : 0] addra
	 .douta(Inst_code) // output [31 : 0] douta
	 );
	
	 Register register(rs, rt, rd, ALU_F, Write_Reg, ~clk, rst, R_Data_A, R_Data_B);

    ALU alu(ALU_OP, R_Data_A, R_Data_B, ZF, OF, ALU_F);

	 always@(negedge clk or posedge rst)
	 begin
		if(rst)
			PC = 32'h0;
		else
			PC = PC_New;
	 end
	 
	 always@(*)
	 begin
		if(clk)
		begin
			PC_New = PC + 32'h4;
			if(OP == 6'b0)
			begin
				case(func)
					6'b100000: ALU_OP = 3'b100;
					6'b100010: ALU_OP = 3'b101;
					6'b100100: ALU_OP = 3'b000;
					6'b100101: ALU_OP = 3'b001;
					6'b100110: ALU_OP = 3'b010;
					6'b100111: ALU_OP = 3'b011;
					6'b101011: ALU_OP = 3'b110;
					6'b000100: ALU_OP = 3'b111;
					default: ALU_OP = 3'b000; 
				endcase
				Write_Reg = 1;
			end
		else
			Write_Reg = 0;    
		end
	 end

endmodule
