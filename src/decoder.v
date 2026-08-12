module decoder (
 input [3:0] lfsr_out,
 output reg [3:0] binary_out
);

always @(*) begin
 case (lfsr_out)
 4'b1111: binary_out = 4'b0000;
 4'b0111: binary_out = 4'b0001;
 4'b1011: binary_out = 4'b0010;
 4'b0101: binary_out = 4'b0011;
 4'b1010: binary_out = 4'b0100;
 4'b1101: binary_out = 4'b0101;
 4'b0110: binary_out = 4'b0110;
 4'b0011: binary_out = 4'b0111;
 4'b1001: binary_out = 4'b1000;
 4'b0100: binary_out = 4'b1001;
 4'b0010: binary_out = 4'b1010;
 4'b0001: binary_out = 4'b1011;
 4'b1000: binary_out = 4'b1100;
 4'b1100: binary_out = 4'b1101;
 4'b1110: binary_out = 4'b1110;
 default: binary_out = 4'b1111;
 endcase
end

endmodule
