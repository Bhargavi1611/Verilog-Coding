`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 10:18:25
// Design Name: 
// Module Name: binarytobcd
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


module binarytobcd(bcd,binary);
output reg  [7:0] bcd;
input [3:0] binary;
always @ *
begin
case(binary)
4'b0000:bcd=8'b00000000;//0

4'b0001:bcd=8'b00000001;//1

4'b0010:bcd=8'b00000010;//2

4'b0011:bcd=8'b00000011;//3

4'b0100:bcd=8'b00000100;//4

4'b0101:bcd=8'b00000101;//5

4'b0110:bcd=8'b00000110;//6

4'b0111:bcd=8'b00000111;//7

4'b1000:bcd=8'b00001000;//8

4'b1001:bcd=8'b00001001;//9
default:bcd=8'b11111111;//error
endcase
end

endmodule
