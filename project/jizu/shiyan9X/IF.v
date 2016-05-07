`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:22 06/08/2015 
// Design Name: 
// Module Name:    IF 
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
module IF(
input clk,
input rst,
output [31:0]Inst_code

    );
reg[31:0]PC;
wire[31:0]PC_new;
ROM_B rom (
  .clka(clk), // input clka
  .addra(PC[7:2]), // input [5 : 0] addra
  .douta(Inst_code) // output [31 : 0] douta
);

assign PC_new=PC+4;

always@(negedge clk or posedge rst)
begin
if(rst)
PC<=32'h0000_0000;

else
PC<=PC_new;


end

endmodule