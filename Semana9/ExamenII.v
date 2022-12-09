module letraA(
    input tecla,
    input caps,
    output reg [7:0]letra
);

reg [7:0] a;
reg [7:0] A;

initial begin 
    a = 97;
    A = 65;
end

always @ (tecla)

if(caps)
begin
    letra = A;
end
else
begin
    letra = a;
end

endmodule

module letraE(
    input tecla,
    input caps,
    output reg [7:0]letra
);

reg [7:0] e;
reg [7:0] E;

initial begin 
    e = 101;
    E = 69;
end

always @ (tecla)

if(caps)
begin
    letra = E;
end
else
begin
    letra = e;
end

endmodule

module letraI(
    input tecla,
    input caps,
    output reg [7:0]letra
);

reg [7:0] i;
reg [7:0] I;

initial begin 
    i = 105;
    I = 73;
end

always @ (tecla)

if(caps)
begin
    letra = I;
end
else
begin
    letra = i;
end

endmodule

module letraI(
    input tecla,
    input caps,
    output reg [7:0]letra
);

reg [7:0] o;
reg [7:0] O;

initial begin 
    o = 105;
    O = 73;
end

always @ (tecla)

if(caps)
begin
    letra = O;
end
else
begin
    letra = o;
end

endmodule