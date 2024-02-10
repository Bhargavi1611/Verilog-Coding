`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 13:10:57
// Design Name: 
// Module Name: 1-bit comparator
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


module onebitcomparator(y1,y2,y3,a,b);
output reg y1,y2,y3;
input a,b;
always @ *
begin
y1=a&~b;//A>B
y2=~a&~b|a&b;//A=B
y3=~a&b;//A<B
end

endmodule
