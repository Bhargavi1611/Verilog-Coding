module PWM_generator (
  input clk,
  input reset,
  input [WIDTH-1:0] duty_cycle, 
  output reg pwm_out
);

parameter WIDTH = 8; 

reg [WIDTH-1:0] counter;

always @(posedge clk) begin
  if (reset) begin
    counter <= 0;
    pwm_out <= 1'b0;
  end else begin
    counter <= counter + 1'b1;
    if (counter < duty_cycle) begin
      pwm_out <= 1'b1;
    end else begin
      pwm_out <= 1'b0;
    end
    if (counter == WIDTH-1) begin
      counter <= 0;
    end
  end
end

endmodule
