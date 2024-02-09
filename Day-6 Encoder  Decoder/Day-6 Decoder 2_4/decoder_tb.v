`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 13:09:38
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
reg [1:0] S;
wire [3:0] Y;//output is 4-bit
decoder dut(Y,S);
initial begin
$monitor("S=%0b Y=%0b",S,Y);
S=2'b00;//input is 2-bit 
#10;
S=2'b01;
#10;
S=2'b10;
#10;
S=2'b11;
#10;
$finish;//end of simulation
end
endmodule
