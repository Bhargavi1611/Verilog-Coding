`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 13:22:18
// Design Name: 
// Module Name: twobitcomparator
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


module twobitcomparator(D,E,F,a,b);
input [1:0] a,b;
output reg D,E,F;
always @ (*)begin
 D= (a>b);//A>B
 E= (a==b);//A==B
 F= (a<b);//A<B
 end
 
endmodule


