module full_adder(input a, b, c, output sum, carry);
assign sum = a ^ b ^ c;
assign carry = (a & b) | (b & c) | (a & c);
endmodule

module ripple_carry_adder(input [3:0] a, b, input cin, output [3:0] sum, output carry);
wire [2:0] c;
full_adder f1(a[0], b[0], cin, sum[0], c[0]);
full_adder f2(a[1], b[1], c[0], sum[1], c[1]);
full_adder f3(a[2], b[2], c[1], sum[2], c[2]);
full_adder f4(a[3], b[3], c[2], sum[3], carry);
endmodule