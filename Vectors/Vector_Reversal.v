module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out[7]=in[0];
    assign out[6]=in[1];
    assign out[5]=in[2];
    assign out[4]=in[3];
    assign out[3]=in[4];
    assign out[2]=in[5];
    assign out[1]=in[6];
    assign out[0]=in[7];
   //we can use concatenation as well 
  //assign {out[0],out[1], out[2],out[3],out[4], out[5],out[6], out[7]}=in;
  //the MSB of in gets allocated to the left-most bit which is out[0].
    
endmodule
