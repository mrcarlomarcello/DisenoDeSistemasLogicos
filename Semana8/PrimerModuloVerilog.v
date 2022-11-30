// Primer modulo de clase
module EJEMPLO(
    input A,
    input B,
    output X1,
    output X2,
    output X3
);

    // and
    assign X1 = A & B;
    // xor
    assign X2 = A ^ B;
    // not
    assign X3 = ~B;

endmodule

module EJEMPLO2(
    input A,
    input B,
    output X1,
    output X2,
    output X3
);

    // and
    and and1 (X1, A, B);
    // xor
    xor xor1 (X2, A, B);
    // not
    not not1 (X3,B);

endmodule

module EJEMPLO3(
    input A,
    input B,
    input C,
    output X1,
    output X2    
);
    //wires
    wire w1;
    wire w2;
    wire w3;

    // and
    and and1 (w1, A, B);
    // xor1
    xor xor1 (w3, C, w2);
    // xor 2
    xor xor2 (X1, C, w1);
    // or;
    or or1 (X2, w1, w3);
    // not
    not not1 (w2,B);

endmodule