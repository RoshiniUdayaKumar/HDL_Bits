module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

  //given the sub-module: module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
  
    //wire declaration
    wire [7:0] w1,w2,w3;
    
    //module instantiation 
    my_dff8 inst1(clk,d,w1);
    my_dff8 inst2(clk,w1,w2);
    my_dff8 inst3(clk,w2,w3);
    
    //multiplexer
    always @(*) begin
        case(sel) 
            2'b00: q<=d;  //use non-blocking, since its used inside a procedural statement 
            2'b01: q<=w1;
            2'b10: q<=w2;
            2'b11: q<=w3;
        endcase        
    end
    

endmodule
