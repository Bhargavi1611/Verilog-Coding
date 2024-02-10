`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 13:42:50
// Design Name: 
// Module Name: fourbitcomparator
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




module fourbitcomparator(D,E,F,a,b);
input [3:0] a,b;
output reg D,E,F;
always @ (*)begin
 D= (a>b);//A>B
 E= (a==b);//A==B
 F= (a<b);//A<B
 end
endmodule
