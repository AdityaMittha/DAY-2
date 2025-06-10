module full_subtractor(input a, b, c, output d, bo);
assign d = a ^ b ^ c;
assign bo = (~a & b) | (~a & c) | (b & c);
endmodule