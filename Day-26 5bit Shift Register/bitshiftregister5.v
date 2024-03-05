`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 22:15:58
// Design Name: 
// Module Name: bitshiftregister5
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bitshiftregister5(SO,clk,rst,SI);
	input SI,clk,rst;
	output reg [4:0]SO;
	always@(posedge clk, negedge rst)
	if(rst)
		SO <= 5'd0;
	else
		SO <= {SO[3:0],SI};	
endmodule

