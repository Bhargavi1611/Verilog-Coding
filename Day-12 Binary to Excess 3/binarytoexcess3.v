`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 11:26:13
// Design Name: 
// Module Name: binarytoexcess3
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


module binarytoexcess3(E,B);
input [3:0] B;
output reg [3:0] E;
always @ *
begin
 E=B+4'b0011;
end

endmodule
