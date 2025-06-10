module mux2x1(input a, b, s, output out);
assign out = (~s & a) | (s & b);
endmodule