`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 17:05:37
// Design Name: 
// Module Name: PISO_tb
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

module PISO_tb;
reg [3:0]d;
reg clk,s;
wire q;
PISO d1(d, clk,s, q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
s=0;d=4'b1011;
#10 s=1;
#10 s=1;
#10 s=1;
#10 s=0;d=4'b0000;
#100 $finish;
end 
endmodule
