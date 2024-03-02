`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2024 13:01:39
// Design Name: 
// Module Name: dusingjkflipflop
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


module dusingjkflipflop(q,clk,reset,d);
input clk,reset;
input d;
output reg q;
reg j,k;
always @(posedge clk or negedge reset)
begin
if(!reset) q<=1'b0;
else 
begin
j<=d;
k<=~d;
q<=j&q|~k&~q;
end
end
endmodule
