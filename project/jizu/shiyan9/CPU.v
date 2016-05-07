`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:05 06/09/2015 
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
module CPU(Inst_code,rst,clk,CPU_F,CPU_ZF,CPU_OF,A,B,ALU_OP,Data,Addr,F,OF,ZF,R_Addr_A,R_Addr_B,Mem_R_Data
    );
input clk,rst;
input [31:0]Inst_code;
output CPU_ZF,CPU_OF;
reg Write_Reg,rd_rt_s,imm_s,alu_mem_s,rt_imm_s,Mem_Write;
output reg[2:0]ALU_OP;
output reg[4:0]R_Addr_A;
output reg[4:0]R_Addr_B;
output [4:0]Addr;
output [31:0]Data;
output [31:0]F;
output OF,ZF;
output [31:0]CPU_F;
output [31:0]Mem_R_Data;
wire[31:0]Mem_W_Data;
wire[5:0]Mem_Addr;
wire[15:0]imm;
wire [31:0]R_Data_A;
wire [31:0]R_Data_B;
wire [5:0]OP;
wire [5:0]func;
wire [4:0]rs;
wire [4:0]rt;
wire [4:0]rd;
wire [31:0]imm_Data;
output[31:0]A;
output[31:0]B;
assign OP=Inst_code[31:26];
assign rs=Inst_code[25:21];
assign rt=Inst_code[20:16];
assign rd=Inst_code[15:11];
assign shamt=Inst_code[10:6];
assign func=Inst_code[5:0];
assign imm=Inst_code[15:0];

assign imm_Data=(imm_s)?{{16{imm[15]}},imm}:{{16{1'b0}},imm};
assign B=(rt_imm_s)?imm_Data:R_Data_B;
assign Addr=(rd_rt_s)?rt:rd;
assign Data=(alu_mem_s)?Mem_R_Data:CPU_F;
	
assign Mem_Addr= CPU_F[7:2];
assign Mem_W_Data=R_Data_B;
always@(rs or rt or rd or func)
begin
R_Addr_A=rs;
R_Addr_B=rt;
ALU_OP=3'b100;
Write_Reg=1'b1;
rd_rt_s=1'b0;
imm_s=1'b0;
rt_imm_s=1'b0;
alu_mem_s=1'b0;
Mem_Write=1'b0;
if(OP==6'b000000)
begin
rd_rt_s=1'b0;
rt_imm_s=1'b0;
alu_mem_s=1'b0;
Write_Reg=1'b1;
Mem_Write=1'b0;
case(func)
	6'b100000:ALU_OP=3'b100;
	6'b100010:ALU_OP=3'b101;
	6'b100100:ALU_OP=3'b000;
	6'b100101:ALU_OP=3'b001;
	6'b100110:ALU_OP=3'b010;
	6'b100111:ALU_OP=3'b011;
	6'b101011:ALU_OP=3'b110;
	6'b000100:ALU_OP=3'b111;
endcase
end
else
	    begin
		 case(OP)
		 6'b001000:begin rd_rt_s=1'b1;rt_imm_s=1'b1;imm_s=1'b1;end
		 6'b001100:begin ALU_OP=3'b000;rd_rt_s=1'b1;rt_imm_s=1'b1; end
		 6'b001110:begin ALU_OP=3'b010;rd_rt_s=1'b1;rt_imm_s=1'b1;end
		 6'b001011:begin ALU_OP=3'b110;rd_rt_s=1'b1;rt_imm_s=1'b1;end
		 6'b100011:begin rd_rt_s=1'b1;rt_imm_s=1'b1;imm_s=1'b1;alu_mem_s=1'b1;end
		 6'b101011:begin Mem_Write=1'b1;rt_imm_s=1'b1;imm_s=1'b1;Write_Reg=1'b0;end
		 endcase
		 
		 
	end
end
assign A=R_Data_A;
assign CPU_F=F;
assign CPU_ZF=ZF;
assign CPU_OF=OF;
jicunqi jicunqi(Addr,Data,R_Addr_A,R_Addr_B,Write_Reg,R_Data_A,R_Data_B,clk,rst);
ALU ALU_A(
			.A(A),
			.B(B),
			.ALU_OP(ALU_OP),
			.F(F),
			.ZF(ZF),
			.OF(OF));
RAM_B My_RAM(
  .clka(clk), // input clka
  .wea(Mem_Write), // input [0 : 0] wea
  .addra(Mem_Addr), // input [5 : 0] addra
  .dina(Mem_W_Data), // input [31 : 0] dina
  .douta(Mem_R_Data) // output [31 : 0] douta
);

endmodule