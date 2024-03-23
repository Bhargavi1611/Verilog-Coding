`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 10:16:03
// Design Name: 
// Module Name: bitmultiplier4
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


module bitmultiplier4(
input [3:0] x,
input [3:0] y,
output reg [7:0] z);
 always @ * 
 begin
 z=x*y;
 end
endmodule
