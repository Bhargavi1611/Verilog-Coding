`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 13:13:57
// Design Name: 
// Module Name: onebitcomparator_tb
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


module onebitcomparator_tb;
reg a,b;
wire y1,y2,y3;
onebitcomparator dut(y1,y2,y3,a,b);
initial begin
$monitor("a=%0b b=%0b y1=%0b y2=%0b y3=%0b",a,b,y1,y2,y3);
a=1'b0;b=1'b0;
#10;
a=1'b0;b=1'b1;
#10;
a=1'b1;b=1'b0;
#10;
a=1'b1;b=1'b1;
#10;
end
endmodule
