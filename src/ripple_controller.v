module ripple_controller (
 input [3:0] lfsr_out,
 output reg ripple
);

always @(*) begin
 if (lfsr_out == 4'b1111)
  ripple = 1'b1;
 else
  ripple = 1'b0;
end

endmodule
