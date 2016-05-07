`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:25 05/26/2015 
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
module CPU(Inst_code,rst,clk,CPU_F,CPU_ZF,CPU_OF,A,B,ALU_OP,Addr,Data,F,OF,ZF,R_Addr_A,R_Addr_B
    );
input clk,rst;
input [31:0]Inst_code;
output CPU_ZF,CPU_OF;
reg Write_Reg;
output reg[2:0]ALU_OP;
output reg[4:0]R_Addr_A;
output reg[4:0]R_Addr_B;
output reg[4:0]Addr;
output [31:0]Data;
output [31:0]F;
output OF,ZF;
output [31:0]CPU_F;
wire [31:0]R_Data_A;
wire [31:0]R_Data_B;
wire [5:0]OP;
wire [5:0]func;
wire [4:0]rs;
wire [4:0]rt;
wire [4:0]rd;
output[31:0]A;
output[31:0]B;
assign OP=Inst_code[31:26];
assign rs=Inst_code[25:21];
assign rt=Inst_code[20:16];
assign rd=Inst_code[15:11];
assign shamt=Inst_code[10:6];
assign func=Inst_code[5:0];
always@(rs or rt or rd or func)
begin
R_Addr_A=rs;
R_Addr_B=rt;
Addr=rd;
if(OP==6'b000000)
begin
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
end
assign A=R_Data_A;
assign B=R_Data_B;
assign CPU_F=F;
assign CPU_ZF=ZF;
assign CPU_OF=OF;
assign Data=F;
jicunqi jicunqi(Addr,Data,R_Addr_A,R_Addr_B,Write_Reg,R_Data_A,R_Data_B,clk,rst);
ALU ALU_A(
			.A(A),
			.B(B),
			.ALU_OP(ALU_OP),
			.F(F),
			.ZF(ZF),
			.OF(OF));

endmodule
