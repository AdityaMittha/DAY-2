module tb_ripple_carry_adder();
reg [3:0] a, b; reg cin;
wire [3:0] sum; wire carry;
ripple_carry_adder uut(a, b, cin, sum, carry);
initial begin
  a=4'b0010; b=4'b0101; cin=0; #10;
  a=4'b1111; b=4'b1111; cin=1; #10;
  $finish;
end
endmodule