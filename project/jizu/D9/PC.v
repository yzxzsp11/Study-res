`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:00 05/20/2016 
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
module PC(clk,rst,Inst_code
    );
		input clk,rst;
		output [31:0]Inst_code;
		reg [31:0]PC,PC_new;
		
		always @(posedge rst,negedge clk)
		begin
			if(rst)
				begin
				PC<=32'B0;PC_new<=32'b0;
				end
			else
				begin
					PC<=PC_new;PC_new <= PC_new+4;
				end
		end
		
	OP_Memory OP_Memory(
  .clka(clk), // input clka
  .addra(PC[7:2]), // input [5 : 0] addra
  .douta(Inst_code) // output [31 : 0] douta
);

endmodule

