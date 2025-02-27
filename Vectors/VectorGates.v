module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
  assign out_or_bitwise = a[2:0]|b[2:0]; //bitwise OR
  assign out_or_logical= a[2:0]||b[2:0];//logical OR
  assign out_not[5:3]= ~b[2:0];
  assign out_not[2:0]=~a[2:0];

endmodule
