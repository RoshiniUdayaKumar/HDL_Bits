module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
//declaring wires 
    wire w1;
    
    //module instantiation 
    add16 inst1 (a[15:0], b[15:0], 0, sum[15:0], w1); //cout is considered, because it acts as a cin for the next adder 
  add16 inst2 (a[31:16], b[31:16], w1, sum[31:16]); //cout is ignored as the top module doesnt have it
endmodule
