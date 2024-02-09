`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 10:29:37
// Design Name: 
// Module Name: encoder
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


module encoder(Y,S);
output reg [1:0]Y;
input [3:0]S;
always @ *begin
case (S)
 4'b0001: Y=2'b00;
 4'b0010: Y=2'b01;
 4'b0100: Y=2'b10;
 4'b1000: Y=2'b11;
default: Y=2'b00;
endcase
end


endmodule
