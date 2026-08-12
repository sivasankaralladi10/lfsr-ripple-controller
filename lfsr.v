module lfsr (
 input clk,
 input rst,
 output [3:0] lfsr_out
);

wire feedback;
wire q0, q1, q2, q3;

assign feedback = q3 ^ q2;

dff d0 (
 .clk(clk),
 .rst(rst),
 .d(feedback),
 .q(q0)
);

dff d1 (
 .clk(clk),
 .rst(rst),
 .d(q0),
 .q(q1)
);

dff d2 (
 .clk(clk),
 .rst(rst),
 .d(q1),
 .q(q2)
);

dff d3 (
 .clk(clk),
 .rst(rst),
 .d(q2),
 .q(q3)
);

assign lfsr_out = {q3, q2, q1, q0};

endmodule
