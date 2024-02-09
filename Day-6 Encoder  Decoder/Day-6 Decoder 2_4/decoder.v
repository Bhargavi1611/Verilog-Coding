`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 13:06:24
// Design Name: 
// Module Name: decoder
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


module decoder(Y,S);
output reg [3:0] Y;
input [1:0] S;
always @ *
begin
case(S)
2'b00:Y=4'b0001;//for 00 we get output as 0001
2'b01:Y=4'b0010;//for 01 we get output as 0010
2'b10:Y=4'b0100;//for 10 we get output as 0100
2'b11:Y=4'b1000;//for 11 we get output as 1000
default: Y=4'b0000;
endcase
end
endmodule
