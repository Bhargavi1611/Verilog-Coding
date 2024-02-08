`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 09:50:32
// Design Name: 
// Module Name: demux_tb
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


module demux_tb;
reg I,S;
wire [1:0] Y;//2-bit
demux dut(S,I,Y);
initial begin
$monitor("I=%0b Y=%0b S=%0b",I,Y,S);//line used to display values of I,Y,S
I=1'b0;S=1'b0;//assigns value 0 to I and 0 to S
#5;
I=1'b0;S=1'b1;
#5;
I=1'b1;S=1'b0;
#5;
I=1'b1;S=1'b1;
#5;
end//ends the initial block
endmodule
