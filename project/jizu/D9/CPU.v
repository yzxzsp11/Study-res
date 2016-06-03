`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:42 05/20/2016 
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
module CPU(clk,rst,ZF,OF,ALU_F,M_R_Data
    );
		input clk;
		input rst;
		output ZF,OF;
		output [31:0]ALU_F;//R型指令ALU的运算结果
		output [31:0]M_R_Data;//从数据寄存器读出的数据
		
		wire [31:0]Inst_code;//取出的指令
		wire [31:0]ALU_A,ALU_B;//送入ALU的数据
		wire [31:0]R_Data_A,R_Data_B;//寄存器堆中读出的数据
		wire [4:0]W_Addr;//写寄存器堆的地址
		wire [31:0]W_Data;//写寄存器堆得数据
		wire [31:0]M_W_Data;//写数据寄存器的数据
		wire [31:0]Mem_Addr;//送数据寄存器的地址
		wire [4:0]rs,rt,rd,shamt;
		wire [5:0]OP,func;
		wire [15:0]imm;
		wire [31:0]imm_data;
		
		reg [2:0]ALU_OP;
		
		reg Write_Reg,Mem_Write;//两个写使能信号
		reg rd_rt_s;
		reg imm_s;
		reg rt_imm_s;
		reg alu_mem_s;
		//一组控制信号
		
		PC My_PC(clk,rst,Inst_code
    );
		
		assign OP=Inst_code[31:26];
		assign rs=Inst_code[25:21];
		assign rt=Inst_code[20:16];
		assign rd=Inst_code[15:11];
		assign shamt=Inst_code[10:6];
		assign func=Inst_code[5:0];
		assign imm = Inst_code[15:0];
		//指令译码
		
		always @(*)
		begin
		if(OP == 6'B0)
			begin
				rd_rt_s=0;
				rt_imm_s=0;
				alu_mem_s=0;
				Write_Reg=1;
				Mem_Write=0;
				case(func)
				6'b100000: ALU_OP = 3'b100;
				6'b100010: ALU_OP = 3'b101;
				6'b100100: ALU_OP = 3'b000;
				6'b100101: ALU_OP = 3'b001;
				6'b100110: ALU_OP = 3'b010;
				6'b100111: ALU_OP = 3'b011;
				6'b101011: ALU_OP = 3'b110;
				6'b000100: ALU_OP = 3'b111;
				endcase
			end
		else 
			begin 
				rd_rt_s=1;
				rt_imm_s=1;
				alu_mem_s=0;
				Write_Reg=1;
				Mem_Write=1;
				case(OP)
				6'b001000:begin ALU_OP = 3'B100;imm_s = 1;end 
				6'b001001:imm_s = 0;
				6'b001100:begin ALU_OP = 3'B000;imm_s = 0;end
				6'b001101:imm_s = 0;
				6'b001110:begin ALU_OP = 3'B010;imm_s = 0;end
				6'b100011:begin ALU_OP = 3'B100;imm_s = 1;alu_mem_s=1;end
				6'b101011:begin ALU_OP = 3'B100;imm_s = 1;end
				6'b000101:begin ALU_OP = 3'B100;imm_s = 1;end
				6'b001010:imm_s = 1;
				6'b001011:begin ALU_OP = 3'B110;imm_s = 0;end
				endcase
			end
		end
		
		assign imm_data = (imm_s)?{{16{imm[15]}},imm}:{{16{1'b0}},imm};//符号扩展
		assign ALU_A = R_Data_A;
		assign ALU_B = (rt_imm_s)?imm_data:R_Data_B;
		
		assign W_Data = alu_mem_s?M_R_Data:ALU_F;
		assign W_Addr = (rd_rt_s)?rt:rd;
		
		assign Mem_Addr = ALU_F;
		assign M_W_Data = R_Data_B;
		
		Register My_REG(clk,rst,rs,rt,W_Addr,W_Data,Write_Reg,R_Data_A,R_Data_B
    );
	 
	  ALU My_ALU(ALU_A,ALU_B,ALU_OP,ZF,OF,ALU_F
    );
	 
	Data_Memory Data_Memory (
  .clka(clk), // input clka
  .wea(Mem_Write), // input [0 : 0] wea
  .addra(Mem_Addr[5:0]), // input [5 : 0] addra
  .dina(R_Data_B), // input [31 : 0] dina
  .douta(M_R_Data) // output [31 : 0] douta
);
	 
endmodule
