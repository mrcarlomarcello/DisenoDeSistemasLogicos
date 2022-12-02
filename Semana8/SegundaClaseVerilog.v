//segundo ejercicio
module Complemento1(
    input [4:0] A,
    input [1:0]op,
    output reg [4:0] C1
);

    reg[4:0] one;
    initial begin
        one=1;
    end

    always @ (*)
    begin
        
        if ( op == 0 ) // C1 es igual A
        begin
            C1 = A;
        end
        if ( op == 1)  // C1 es complemento a1 A
        begin
            C1 = ~A;
        end
        if ( op == 2)  // C1 es complemento a2 A
        begin
            C1 = (~A) + one;
        end        
    end
endmodule

