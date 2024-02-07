`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 23:01:42
// Design Name: 
// Module Name: logicgate_tb
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


module logicgate_tb;
reg a,b;
wire y1,y2,y3,y4,y5,y6,y7;
logicgate dut( y1, y2, y3, y4, y5, y6, y7,a, b);
initial begin
$monitor("a=%0b b=%0b y1=%0b y2=%0b y3=%0b y4=%0b y5=%0b y6=%0b y7=%0b",a,b,y1,y2,y3,y4,y5,y6,y7);
 a=1'b0;b=1'b0; //1'b0 is nothing but input is having 1 bit which is binary 
   #10;//delay of 10ns to go for next step 
 a=1'b0;b=1'b1;
   #10;
 a=1'b1;b=1'b0;
   #10;
  a=1'b1;b=1'b1;
   #10;
   
end
endmodule
