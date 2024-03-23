`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 10:27:15
// Design Name: 
// Module Name: bitmultiplier4_tb
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


module bitmultiplier4_tb;
reg [3:0] x;
reg [3:0] y;
wire [7:0] z;
bitmultiplier4 dut(x,y,z);
initial begin
$monitor("x=%0b y=%0b z=%0b",x,y,z);
x=1000;y=1111;#10;
x=0010;y=1001;#10;
x=1100;y=1101;#10;
x=1010;y=0011;#10;
end
endmodule
