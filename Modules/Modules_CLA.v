module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    //wire declaration 
    reg w1; //1-bit for cout of 1st add16 adder
    //w1 also acts as a select line for the mux
    //16-bit wires for carrying sum 
    reg [31:16] w2; //16-bits wide
    reg [31:16] w3;
    //module instantiation 
    add16 inst1(a[15:0], b[15:0], 0, sum[15:0], w1);
    add16 inst2(a[31:16], b[31:16], 0, w2[31:16]);
    add16 inst3(a[31:16], b[31:16], 1, w3[31:16]);
    
      //implementing 16-bit 2X1 MUX
    always @(*) begin
        case(w1) 
            1'b0: sum[31:16]=w2;
            1'b1: sum[31:16]=w3;
        endcase
    end
   

endmodule
