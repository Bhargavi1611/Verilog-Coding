`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 22:14:25
// Design Name: 
// Module Name: SISO_tb
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


module SISO_tb;
reg clk=0,d;
wire q;
SISO dff0(d,clk,q);
always #1 clk=~clk;
initial begin
$monitor("d=%0b q=%0b",d,q);
clk=0;
d=0;
#10;
d=1;
#10;
d=0;
#10;
$finish;
end
endmodule
