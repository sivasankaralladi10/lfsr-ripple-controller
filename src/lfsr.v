module lfsr (
    input clk,
    input rst,
    output [3:0] q
);

wire feedback;

assign feedback = q[3] ^ q[2];

dff dff0 (
    .clk(clk),
    .rst(rst),
    .d(feedback),
    .q(q[0])
);

dff dff1 (
    .clk(clk),
    .rst(rst),
    .d(q[0]),
    .q(q[1])
);

dff dff2 (
    .clk(clk),
    .rst(rst),
    .d(q[1]),
    .q(q[2])
);

dff dff3 (
    .clk(clk),
    .rst(rst),
    .d(q[2]),
    .q(q[3])
);

endmodule
