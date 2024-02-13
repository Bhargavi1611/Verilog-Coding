`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 19:13:35
// Design Name: 
// Module Name: priorityencoder_tb
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


module priorityencoder_tb;
reg [3:0] S;
wire [1:0]Y;
wire V;
priorityencoder dut(Y,V,S);
initial begin
$monitor("Y=%0b V=%0b S=%0b",Y,V,S);
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
