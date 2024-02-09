`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 10:37:04
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
reg [3:0] S;
wire [1:0]Y;
encoder dut(Y,S);
initial begin
$monitor("Y=%0b S=%0b",Y,S);
S=4'b0001;
#10;
S=4'b0010;
#10;
S=4'b0100;
#10;
S=4'b1000;
#10;
$finish;//end of simulation 
end
endmodule
