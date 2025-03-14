module top_module ( input x, input y, output z );
//implementing XNOR gate 
    assign z= ~(x^y);
endmodule
