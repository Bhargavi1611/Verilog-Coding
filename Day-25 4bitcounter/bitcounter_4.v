`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 16:37:06
// Design Name: 
// Module Name: bitcounter_4
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


module bitcounter_4(input clk,input reset,output reg [3:0] out);
always @(posedge clk)
begin
if(!reset)begin
out<=0;
end
else begin
out<=out+1;
end
end
endmodule
