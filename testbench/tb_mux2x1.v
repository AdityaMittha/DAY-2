module tb_mux2x1();
reg a, b, s; wire out;
mux2x1 uut(a, b, s, out);
initial begin
  a=0; b=1; s=0; #10;
  a=0; b=1; s=1; #10;
  a=1; b=0; s=0; #10;
  a=1; b=0; s=1; #10;
  $finish;
end
endmodule