`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 10:07:41
// Design Name: 
// Module Name: demux4_1_tb
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


module demux1_4_tb;
reg I;
reg [3:0] S;
wire [3:0] Y;
demux1_4 dut(Y,S,I);
initial begin
$monitor("I=%0b S=%0b Y=%0b",I,S,Y);
I=1'b0;S=4'b0001;// Test case 1: I=0, S=0001
#10
I=1'b0;S=4'b0010;// Test case 2: I=0, S=0010
#10
I=1'b1;S=4'b0100;// Test case 3: I=1, S=0100
#10
I=1'b1;S=4'b1000;// Test case 4: I=1, S=1000
#10
I=1'b1;S=4'b0000; // Test case 5: I=1, S=0000
#10
I=1'b0;S=4'b1111;  // Test case 6: I=0, S=1111
#10
$finish;//end of simulation
end
endmodule
