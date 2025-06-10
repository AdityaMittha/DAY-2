module tb_mux8x1();
reg [7:0] in; reg [2:0] sel; wire out;
mux8x1 uut(in, sel, out);
initial begin
  in=8'b10101010;
  sel=3'b000; #10;
  sel=3'b001; #10;
  sel=3'b010; #10;
  sel=3'b011; #10;
  sel=3'b100; #10;
  sel=3'b101; #10;
  sel=3'b110; #10;
  sel=3'b111; #10;
  $finish;
end
endmodule