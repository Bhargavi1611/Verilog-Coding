`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 09:53:35
// Design Name: 
// Module Name: SRAM64K
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


module SRAM64k(
input clk,
input [15:0] address,
input write,
input [7:0] data_in,
output reg [7:0] data_out);
reg [7:0] memory [65535:0];
always @ (posedge clk)
begin
if(write) 
memory[address]<=data_in;
else
 data_out<=memory[address];
end
endmodule
