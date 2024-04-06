`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2024 20:09:24
// Design Name: 
// Module Name: DUALPORTSRAM
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


module DUALPORTSRAM(q, data, r_addr, w_addr, we, r_clock, w_clock);
	input [7:0] data;
	input [5:0] r_addr, w_addr;
	input we, r_clock, w_clock;
	output reg [7:0] q;

	reg [7:0] sram[63:0];
	
	always @ (posedge w_clock)
	begin
	
		if (we)
			sram[w_addr] <= data;
	end
	
	always @ (posedge r_clock)
	begin
	
		q <= sram[r_addr];
	end
endmodule

