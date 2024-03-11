`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 10:53:15
// Design Name: 
// Module Name: CounterMod_N_tb
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


module CounterMod_N_tb;
parameter N=10;
parameter b=4;
reg clk,reset;
wire [N-1:0] out;
CounterMod_N dut(clk,reset,out);
always #5 clk=~clk;
initial begin
$monitor("out=%0b",out);
clk<=0;reset<=0;
#10;
reset<=1;
#10;
reset<=0;
#10;
reset<=1;
#10;
$finish;

end
endmodule
