//using if-else-if statements 
/*module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    always @(*) begin 
        if(a<b && a<c && a<d ) begin
           min=a; 
        end
        else  if (b<a && b<c && b<d) begin 
           min=b; 
        end
        else if (c<a && c<b && c<d ) begin 
           min=c; 
        end
        else 
            min=d;
    end

endmodule*/


//same implementation using conditional ternary operator 
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
   
    assign min=( (a<b && a<c && a<d) ? a:
        (b<a && b<c && b<d) ? b:
                (c<a && c<b && c<d) ? c: d);

endmodule
