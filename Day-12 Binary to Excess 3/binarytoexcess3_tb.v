`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 11:33:49
// Design Name: 
// Module Name: binarytoexcess3_tb
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


module binarytoexcess3_tb;
reg [3:0] B;
wire [3:0] E;
binarytoexcess3 dut(E,B);
initial begin 
$monitor("B=%0b E=%0b",B,E);
B=4'b0000;
#10; 
B=4'b0001;#10; 
B=4'b0010;#10;
B=4'b0011;#10;
B=4'b0100 ;#10;
B=4'b0101;#10;
B=4'b0110;#10;
B=4'b0111 ;#10;
B=4'b1000;#10;
B=4'b1001 ;#10;
B=4'b1010 ;#10;
B=4'b1011;#10;
B=4'b1100 ;#10;
B=4'b1101;#10;
B=4'b1110 ;#10;
B=4'b1111 ;#10;
end
endmodule
