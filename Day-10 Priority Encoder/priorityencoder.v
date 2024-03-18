`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 19:00:14
// Design Name: 
// Module Name: priorityencoder
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


module priorityencoder(Y,V,I);
input [3:0] I;
output reg [1:0] Y;
output reg V;//This is a single bit that indicates whether any input is active. It's often referred to as the "valid" signal.
always @ *
begin
if(I[0]) {V,Y}=3'b100;
else if (I[1]) {V,Y}=3'b101;
else if (I[2]) {V,Y}=3'b110;
else if (I[3]) {V,Y}=3'b111;
else  {V,Y}=3'b000;
end

endmodule
