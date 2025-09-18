module top_module( 
    input a, b, sel,
    output out ); 
    always @(a or b or sel) begin
    if(sel==0)
        out=a;
    else 
        out=b;
    end
endmodule
