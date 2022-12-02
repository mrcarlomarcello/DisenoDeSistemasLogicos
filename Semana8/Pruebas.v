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


module exampleCase(
    input [4:0] A,
    input [1:0]op,
    output reg [4:0] Result
);

always @ (*)
begin
    case (op)
        1: 
            Result = A *2;
        2:
            Result = A *3;        
        default: 
            Result = A;
    endcase
end

endmodule

module repeticion(
    input [4:0] num,
    input calcular,
    output reg [6:0] Result
);

reg[4:0] i;

always @ (posedge calcular)
begin
    begin
        Result=0;
        i=0;
    end

    for (i =0 ; i<=num; i++)
    begin
        Result = Result + i ;
    end    
end

endmodule

module factorial(
    input [4:0] num,
    input calcular,
    output reg [31:0] Result
);

reg[4:0] i;

always @ (posedge calcular)
begin
    begin
        Result=1;
        i=0;
    end

    for (i =num ; i>0; i--)
    begin
        Result = Result * i ;
    end    
end

endmodule