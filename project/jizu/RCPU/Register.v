`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:52 05/14/2016 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input [4:0] R_Addr_A,
    input [4:0] R_Addr_B,
    input [4:0] W_Addr,
    input [31:0] W_Data,
	 input Write_Reg,
	 input Clk,
	 input Reset,
    output [31:0] R_Data_A,
    output [31:0] R_Data_B
    );
	
	reg[31:0] REG_Files[0:31];//32 register
	reg[5:0] i;  
	
	assign R_Data_A = REG_Files[R_Addr_A];
	assign R_Data_B = REG_Files[R_Addr_B];
	
	always@(posedge Clk or posedge Reset)
	begin
		if(Reset)
			begin
				i = 0;
				while(i <= 31)
				begin		
					REG_Files[i] = 32'b0;
					i = i + 1;
				end
			end
		else
			begin
				if(Write_Reg)
					REG_Files[W_Addr] = W_Data;//
			end
	end

endmodule
