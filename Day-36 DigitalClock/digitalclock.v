`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 19:48:13
// Design Name: 
// Module Name: digitalclock
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


module digitalclock(clk,reset,seconds,minutes,hours);
input clk,reset;
output reg [5:0] seconds;
output reg [5:0] minutes;
output reg [4:0] hours;
always @ (posedge (clk) or posedge (reset)) begin
if(reset==1'b1) begin
seconds=0;
minutes=0;
hours=0;
end
else if(clk==1'b1) begin
seconds=seconds+1;
if(seconds==60) begin
seconds=0;
minutes=minutes+1;
if(minutes==60) begin
minutes=0;
hours=hours+1;
if(hours==24) begin
hours=0;
end
end
end
end
end
endmodule
