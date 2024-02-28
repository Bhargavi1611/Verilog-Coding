`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2024 09:49:35
// Design Name: 
// Module Name: segmentdisplay_tb
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

module segmentdisplay_tb;
    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;
    segmentdisplay dut (.bcd(bcd),.seg(seg));
    initial begin
        for(i = 0;i < 16;i = i+1) 
        begin
            bcd = i; 
            #10;
        end     
    end
      
endmodule
