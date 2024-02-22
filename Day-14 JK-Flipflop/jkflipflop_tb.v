`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2024 16:23:39
// Design Name: 
// Module Name: jkflipflop_tb
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


module jkflipflop_tb;
reg j=0,k=0,clk=0,reset=1;
wire q,qbar;

jkflipflop dut(q,qbar,j,k,clk,reset);
initial begin
$monitor("q=%0d qbar=%0d j=%0d k=%0d",q,qbar,j,k);
j=1'b1;k=1'b1;
#5;
reset=1'b0; 
#20;
$finish;

end
always #1 clk=~clk;
endmodule
