`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 12:39:55
// Design Name: 
// Module Name: srflipflop_tb
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


module srflipflop_tb;
reg s=0,r=0,clk=0,reset=1;
wire q,qbar;
srflipflop dut(q,qbar,s,r,clk,reset);
initial begin
$monitor("s=%0d r=%0d q=%0d qbar=%0d",s,r,q,qbar);

s=0;r=0;
#5;
s=0;r=1;
#5;
s=1;r=0;
#5;
reset=1'b0;
#20;
$finish;
end
always #1 clk=~clk;
endmodule
