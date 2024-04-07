module tb_PWM_generator;

reg clk, reset;
reg [7:0] duty_cycle;  // Assuming 8-bit width as in the example
wire pwm_out;

PWM_generator dut (
  .clk(clk),
  .reset(reset),
  .duty_cycle(duty_cycle),
  .pwm_out(pwm_out)
);
always begin
  #10 clk = ~clk;  
end

initial begin
  
  clk = 1'b0;
  reset = 1'b1;
  duty_cycle = 8'd64;  
  #100;  
  reset = 1'b0;
  #100;
  duty_cycle = 8'd25;  // 25% duty cycle
  #100; 
  duty_cycle = 8'd128;  // 75% duty cycle
  #100;
   duty_cycle = 8'd0;    // 0% duty cycle
  #100;
   duty_cycle = 8'd255;  // 100% duty cycle (may not be ideal)
  #1000;
  $stop;
end
endmodule
