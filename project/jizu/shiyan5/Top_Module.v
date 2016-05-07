`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:05 05/12/2015 
// Design Name: 
// Module Name:    Top_Module 
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
module Top_Module(Mem_Addr,Choose,Mem_Write,Clk,LED);
	input [7:2]Mem_Addr;
	input [1:0]Choose;
	input Mem_Write;
	input Clk;
	output reg [7:0]LED;
	
	reg [31:0]M_W_Data;
	wire [31:0]M_R_Data;
	
	RAM_B Data_RAM(
	  .clka(Clk), // input clka
	  .wea(Mem_Write), // input [0 : 0] wea
	  .addra(Mem_Addr[7:2]), // input [5 : 0] addra
	  .dina(M_W_Data), // input [31 : 0] dina
	  .douta(M_R_Data) // output [31 : 0] douta
	);
	
	always@(posedge Clk)
	begin
		if(Mem_Write==1)
		begin
			case(Choose)
			2'b00:begin M_W_Data=32'h0000_0000; end
			2'b01:begin M_W_Data=32'h1234_5678; end
			2'b10:begin M_W_Data=32'hFFFF_FFFF; end
			2'b11:begin M_W_Data=32'h2FFF_FFFF; end
			endcase
		end
		else 
		begin
			case(Choose)
			2'b00:LED=M_R_Data[7:0];
			2'b01:LED=M_R_Data[15:8];
			2'b10:LED=M_R_Data[23:16];
			2'b11:LED=M_R_Data[31:24];
			endcase
		end
	end
endmodule