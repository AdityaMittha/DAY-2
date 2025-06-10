module tb_full_subtractor();
reg a, b, c; wire d, bo;
full_subtractor uut(a, b, c, d, bo);
initial begin
  integer i;
  for (i=0; i<8; i=i+1) begin
    {a,b,c} = i; #10;
  end
  $finish;
end
endmodule