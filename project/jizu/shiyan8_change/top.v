`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:50 06/04/2015 
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
module top(rst,clk,SW,LED,CPU_F,CPU_ZF,CPU_OF,A,B,ALU_OP,Addr,Data,Inst_code,R_Addr_A,R_Addr_B
    );
input rst,clk;
input[2:0]SW;
output reg [7:0]LED;
output [31:0]CPU_F;
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
CPU CPU(Inst_code,rst,clk,CPU_F,CPU_ZF,CPU_OF,A,B,ALU_OP,Addr,Data,F,OF,ZF,R_Addr_A,R_Addr_B);
always@(CPU_F or SW)
begin
case(SW)
3'b000:LED=CPU_F[7:0];
3'b001:LED=CPU_F[15:8];
3'b010:LED=CPU_F[23:16];
3'b011:LED=CPU_F[31:24];
default:begin LED[7]=CPU_ZF;LED[0]=CPU_OF;LED[6:1]=6'b0;end
endcase
end
endmodule
