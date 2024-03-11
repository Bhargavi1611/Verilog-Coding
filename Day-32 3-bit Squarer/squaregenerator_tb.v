module squarer_b_tb;
  reg  a0,a1,a2;
  wire [5:0] y;
  squarer_b dut(a0,a1,a2,y);
    
  initial begin
    a0=0;a1=0;a2=0;#10;
    a0=0;a1=0;a2=1;#10;
    a0=0;a1=1;a2=0;#10;
    a0=0;a1=1;a2=1;#10;
    a0=1;a1=0;a2=0;#10;
    a0=1;a1=0;a2=1;#10;
    a0=1;a1=1;a2=0;#10;
    a0=1;a1=1;a2=1;#10;
    $finish;
    
    
  
  end
endmodule