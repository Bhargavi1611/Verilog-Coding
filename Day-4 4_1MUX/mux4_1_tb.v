`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 15:02:05
// Design Name: 
// Module Name: mux4_1_tb
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


module mux4_1_tb;
reg [1:0]S;
reg [3:0]I;
wire Y;
mux4_1 dut(Y,S,I);
initial begin
$monitor("S=%0b I=%0b Y=%0b",S,I,Y);
I=4'b0001;S=2'b00;
#10;
I=4'b0010;S=2'b01;
#10;
I=4'b0100;S=2'b10;
#10;
I=4'b1000;S=2'b11;
#10;
I=4'b0000;S=2'b11;
#10;
I=4'b1111;S=2'b00;
#10;
end
endmodule
