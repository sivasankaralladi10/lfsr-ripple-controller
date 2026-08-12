`timescale 1ns/1ps

module tb_lfsr;

reg clk;
reg rst;
wire [3:0] lfsr_out;
wire [3:0] binary_out;
wire ripple;

top uut (
 .clk(clk),
 .rst(rst),
 .lfsr_out(lfsr_out),
 .binary_out(binary_out),
 .ripple(ripple)
);

initial begin
 clk = 0;
 forever #5 clk = ~clk;
end

initial begin
 rst = 1;
 #1;
 rst = 0;
 #200;
 $finish;
end

initial begin
 $monitor("Time=%0t clk=%b rst=%b LFSR=%b Binary=%b Ripple=%b",
 $time, clk, rst, lfsr_out, binary_out, ripple);
end

endmodule
