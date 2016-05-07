`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:10 06/08/2015 
// Design Name: 
// Module Name:    RI_CPU 
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
module RI_CPU(clk,rst,clk_100M,ALU_F,Mem_R_Data,FR_ZF,FR_OF
    );

input clk,rst,clk_100M;
output [31:0]ALU_F,Mem_R_Data;
output reg FR_ZF,FR_OF;

wire[5:0]OP,func;
wire[4:0]Rs,Rt,Rd;
wire[15:0]imm;
wire ZF,OF;
wire[31:0]ALU_A,ALU_B,ALU_F;
wire[31:0] R_Data_B,imm_Data,W_Data,Mem_W_Data;
wire[4:0]W_Addr;
wire[5:0]Mem_Addr;
wire[31:0]Inst_code;

reg[2:0]ALU_OP;
reg Write_Reg,Mem_Write,imm_s,rd_rt_s,rt_imm_s,alu_mem_s,Set_OF,Set_ZF;


IF My_IF(

  .clk(clk),
  .rst(rst),
  .Inst_code(Inst_code));
  
 assign OP=Inst_code[31:26];
 assign Rs=Inst_code[25:21];
 assign Rt=Inst_code[20:16];
 assign Rd=Inst_code[15:11];
 assign func=Inst_code[5:0];
 assign imm=Inst_code[15:0];
		
	
	assign imm_Data=(imm_s)?{{16{imm[15]}},imm}:{{16{1'b0}},imm};
	assign ALU_B=(rt_imm_s)?imm_Data:R_Data_B;
	assign W_Addr=(rd_rt_s)?Rt:Rd;
	assign W_Data=(alu_mem_s)?Mem_R_Data:ALU_F;
	
	assign Mem_Addr= ALU_F[7:2];
	assign Mem_W_Data=R_Data_B;
	
	ALU_32 uut_ALU(ALU_F,ZF,OF,ALU_A,ALU_B,ALU_OP);
	
	MIPS_REG uut_REGS(
	.Clk(~clk),
	.Reset(rst),
	.R_Addr_A(Rs),
	.R_Addr_B(Rt),
	.W_Addr(W_Addr),
	.W_Data(W_Data),
	.Write_Reg(Write_Reg),
	.R_Data_A(ALU_A),
	.R_Data_B(R_Data_B)
	);



RAM_B My_RAM(
  .clka(clk_100M), // input clka
  .wea(Mem_Write), // input [0 : 0] wea
  .addra(Mem_Addr), // input [5 : 0] addra
  .dina(Mem_W_Data), // input [31 : 0] dina
  .douta(Mem_R_Data) // output [31 : 0] douta
);


always@(posedge rst or negedge clk)
begin 

     if (rst)
	  begin
	  FR_ZF<=1'B0;
	  FR_OF<=1'B0;
	  end
	
	else
	begin
	if(Set_ZF) FR_ZF<=ZF;
	if(Set_OF) FR_OF<=OF;
	end
	end
	
	always@(*)
	begin
	ALU_OP=3'B100;
	Write_Reg=1'b1;
	Set_ZF=1'B1;
	Set_OF=1'b0;
	rd_rt_s=1'b0;
	imm_s=1'b0;
	rt_imm_s=1'b0;
	alu_mem_s=1'b0;
	Mem_Write=1'b0;
	
	if(OP==6'b000000)
	begin
	case(func)
			6'b100000: begin ALU_OP = 3'b100;Set_OF=1'b1;end
			6'b100010: begin ALU_OP = 3'b101;Set_OF=1'b1;end
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
		 case(OP)
		 6'b001000:begin rd_rt_s=1'b1;rt_imm_s=1'b1;imm_s=1'b1;Set_OF=1'b1;end
		 6'b001100:begin ALU_OP=3'b000;rd_rt_s=1'b1;rt_imm_s=1'b1; end
		 6'b001110:begin ALU_OP=3'b010;rd_rt_s=1'b1;rt_imm_s=1'b1;end
		 6'b001011:begin ALU_OP=3'b110;rd_rt_s=1'b1;rt_imm_s=1'b1;end
		 6'b100011:begin rd_rt_s=1'b1;rt_imm_s=1'b1;imm_s=1'b1;alu_mem_s=1'b1;Set_ZF=1'b0;end
		 6'b101011:begin Mem_Write=1'b1;rt_imm_s=1'b1;imm_s=1'b1;Write_Reg=1'b0;Set_ZF=1'b0;end
		 endcase
		 
		 
	end
		 
end
endmodule
