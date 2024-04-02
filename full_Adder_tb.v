// full_adder_tb

module full_adder_tb();

  reg a,b,c;
  wire sum,carry;
  
  full_adder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial begin
  
  $monitor($time,"a = %0b, b = %0b, c = %0b, sum = %0b, carry = %0b",a,b,c,sum,carry);
  a = 0; b = 0; c = 0;
  #1;
  a = 0; b = 0; c = 1;
  #1;
  a = 0; b = 1; c = 0;
  #1;
  a = 0; b = 1; c = 1;
  #1;
  a = 1; b = 0; c = 0;
  #1;
  a = 1; b = 0; c = 1;
  #1;
  a = 1; b = 1; c = 0;
  #1;
  a = 1; b = 1; c = 1;
  #1;
  $finish;
end
endmodule



