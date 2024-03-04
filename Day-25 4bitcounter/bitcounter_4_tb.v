`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 16:39:41
// Design Name: 
// Module Name: bitcounter_4_tb
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


module bitcounter_4_tb;
reg clk,reset;
wire [3:0] out;
bitcounter_4 dut(clk,reset,out);
always #5 clk=~clk;
initial begin
reset<=0;clk<=0;
#10;
reset<=1;
#20;
reset<=0;
#80;
reset<=1;
#20;
$finish;
end
endmodule
