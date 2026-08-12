module top (
 input clk,
 input rst,
 output [3:0] lfsr_out,
 output [3:0] binary_out,
 output ripple
);

lfsr U1 (
 .clk(clk),
 .rst(rst),
 .lfsr_out(lfsr_out)
);

decoder U2 (
 .lfsr_out(lfsr_out),
 .binary_out(binary_out)
);

ripple_controller U3 (
 .lfsr_out(lfsr_out),
 .ripple(ripple)
);

endmodule
