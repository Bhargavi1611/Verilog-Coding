`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 14:32:49
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
reg [3:0] a, b;
reg [2:0]opcode;
wire [3:0] x;
ALU dut (a,b,opcode,x);
initial begin
$monitor("a=%0b b=%0b opcode=%0b x=%0b",a,b,opcode,x); 
    a = 4'b0101;b = 4'b0011;opcode = 3'b100;
    #10;
    a = 4'b1010;b = 4'b0110;opcode = 3'b011;
    #10;
    a=4'b0010;b=4'b0011;opcode=3'b001;
    #10;
    a=4'b0011;b=4'b0111;opcode=3'b101;
    #10;
    a=4'b1110;b=4'b1000;opcode=3'b111;
    #10;
    $finish;
end
endmodule

