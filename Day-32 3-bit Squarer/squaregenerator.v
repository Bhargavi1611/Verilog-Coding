module squarer_b(a0,a1,a2,y);
  input a0,a1,a2;
  output reg [5:0] y;
  always @ * 
  begin
    y[0] = a2;
    y[1] = 1'b0;
    y[2] = a1&(~a2);
    y[3] = a2&(a1^a0);
    y[4] = a0&((~a1)|a2);
    y[5] = a0&a1;
end
  endmodule