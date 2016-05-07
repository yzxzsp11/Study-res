`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:43 06/09/2015 
// Design Name: 
// Module Name:    top 
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
module top(rst,clk,SW,LED,CPU_F,CPU_ZF,CPU_OF,A,B,ALU_OP,Addr,Data,Inst_code,R_Addr_A,R_Addr_B,Mem_R_Data
    );
input rst,clk;
input[3:0]SW;
output reg [7:0]LED;
output [31:0]CPU_F;
output [31:0]Mem_R_Data;
output CPU_ZF,CPU_OF;
output [31:0]A;
output [31:0]B;
output [2:0]ALU_OP;
output [4:0]Addr;
output [4:0]R_Addr_A;
output [4:0]R_Addr_B;
output [31:0]Data;
output [31:0]Inst_code;
test test(rst,clk,Inst_code);
CPU  CPU(Inst_code,rst,clk,CPU_F,CPU_ZF,CPU_OF,A,B,ALU_OP,Data,Addr,F,OF,ZF,R_Addr_A,R_Addr_B,Mem_R_Data);
always@(CPU_F or SW)
begin
case(SW[3:0])
 4'b0000:LED=CPU_F[7:0];
 4'b0001:LED=CPU_F[15:8];
 4'b0010:LED=CPU_F[23:16];
 4'b0011:LED=CPU_F[31:24];
 4'b0100:LED=Mem_R_Data[7:0];
 4'b0101:LED=Mem_R_Data[15:8];
 4'b0110:LED=Mem_R_Data[23:16];
 4'b0111:LED=Mem_R_Data[31:24];
 4'b1000:begin LED[7]=OF;LED[0]=ZF;LED[6:1]=6'b0;end
default:begin LED[7]=CPU_ZF;LED[0]=CPU_OF;LED[6:1]=6'b0;end
endcase
end
endmodule
