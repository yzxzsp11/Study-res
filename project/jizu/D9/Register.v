`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:34 05/20/2016 
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
module Register(clk,Reset,R_Addr_A,R_Addr_B,W_Addr,W_Data,Write_Reg,R_Data_A,R_Data_B
    );
		input clk,Reset,Write_Reg;
		input [4:0]R_Addr_A,R_Addr_B,W_Addr;
		input [31:0]W_Data;
		output [31:0]R_Data_A,R_Data_B;
		reg [31:0]REG_FILES [0:31];
		
		assign R_Data_A = REG_FILES[R_Addr_A];
		assign R_Data_B = REG_FILES[R_Addr_B];
		
		always @(posedge Reset,posedge clk)
		begin
			if(Reset)
				begin
				REG_FILES [0] = 32'b0;
				REG_FILES [1] = 32'b0;
				REG_FILES [2] = 32'b0;
				REG_FILES [3] = 32'b0;
				REG_FILES [4] = 32'b0;
				REG_FILES [5] = 32'b0;
				REG_FILES [6] = 32'b0;
				REG_FILES [7] = 32'b0;
				REG_FILES [8] = 32'b0;
				REG_FILES [9] = 32'b0;
				REG_FILES [10] = 32'b0;
				REG_FILES [11] = 32'b0;
				REG_FILES [12] = 32'b0;
				REG_FILES [13] = 32'b0;
				REG_FILES [14] = 32'b0;
				REG_FILES [15] = 32'b0;
				REG_FILES [16] = 32'b0;
				REG_FILES [17] = 32'b0;
				REG_FILES [18] = 32'b0;
				REG_FILES [19] = 32'b0;
				REG_FILES [20] = 32'b0;
				REG_FILES [21] = 32'b0;
				REG_FILES [22] = 32'b0;
				REG_FILES [23] = 32'b0;
				REG_FILES [24] = 32'b0;
				REG_FILES [25] = 32'b0;
				REG_FILES [26] = 32'b0;
				REG_FILES [27] = 32'b0;
				REG_FILES [28] = 32'b0;
				REG_FILES [29] = 32'b0;
				REG_FILES [30] = 32'b0;
				REG_FILES [31] = 32'b0;
			end
			else if(Write_Reg)
			REG_FILES[W_Addr] = W_Data;
			else begin end
		end
endmodule

