`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2024 13:06:13
// Design Name: 
// Module Name: dusingjkflipflop_tb
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


module dusingjkflipflop_tb;
reg clk=0,reset=1;
reg d,j,k;
wire q;
dusingjkflipflop dut(q,clk,reset,d);
initial begin
$monitor("d=%0b j=%0b k=%0b q=%0b",d,j,k,q);
reset=0;
#10;
d=0;j=0;k=0;
#10;
d=0;j=0;k=1;
#10;
d=1;j=1;k=0;
#10;
d=1;j=0;k=0;
#10;
$finish;
end
always #5 clk=~clk;
endmodule
