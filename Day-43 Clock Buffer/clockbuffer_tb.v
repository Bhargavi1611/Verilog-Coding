`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 09:59:00
// Design Name: 
// Module Name: clockbuffer_tb
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


module clockbuffer_tb;
reg clk_in;
wire clk_out;
clockbuffer dut(clk_out,clk_in);
initial begin
$monitor("clk_in=%0b,clk_out=%0b",clk_in,clk_out);
clk_in=0;
#10;
clk_in=1;
#10;
clk_in=0;
#10;
clk_in=1;
#10;
$finish;
end
always #5 clk_in=~clk_in;
endmodule
