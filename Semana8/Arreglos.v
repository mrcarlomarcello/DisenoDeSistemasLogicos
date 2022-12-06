module ARRAY(
    input [4:0] pos,
    output reg [7:0] salida
);
    //data         //array size
reg [7:0] vector [5:0];

initial begin
    vector [0] = 56;
    vector [1] = 189;
    vector [2] = 190;
    vector [3] = 221;
    vector [4] = 155;
    vector [5] = 235;

end

always @ (*)
begin
    salida = vector[pos];
end

endmodule

module BubbleSort(
    input [4:0] dato,
    input [3:0] pos,
    input almacenar,
    input ordenar,    
    input show,
    output reg [4:0]resultado
);
    //data         //array size
reg [4:0] vector [15:0];
// temp
reg [4:0] temporal;

//variables para el ciclo 
reg [3:0] i;
reg [3:0] j;

initial begin
    vector [0] = 0;
    vector [1] = 0;
    vector [2] = 0;
    vector [3] = 0;
    vector [4] = 0;
    vector [5] = 0;
    vector [6] = 0;
    vector [7] = 0;
    vector [8] = 0;
    vector [9] = 0;
    vector [10] = 0;
    vector [11] = 0;
    vector [12] = 0;
    vector [13] = 0;
    vector [14] = 0;
    vector [15] = 0;
end

always @ (posedge almacenar) begin
    vector[pos] = dato;
    resultado = vector[pos];
end

always @ (posedge show) begin
    resultado = vector[pos];
end

always @ (pos) begin
    resultado = vector[pos];
end

always @ (posedge ordenar) begin
    
    for (i = 0; i < 16 - 1; i++)
    begin

        // Last i elements are already in place
        for (j = 0; j < 16 - i - 1; j++)
        begin
            if (vector[j] > vector[j + 1])
            begin
                temporal = vector[j];
                vector[j] = vector[j + 1];
                vector[j + 1] = temporal;
                
            end
        end
    end  
end

endmodule

module ASCII(
    input clockcito,
    output reg [7:0] letra
);

//variable de letra
reg [7:0] R;

always @ (posedge clockcito) begin
    
    R = $urandom % 127;
    letra = R;
end
endmodule

module ABC(
    input clockcito,
    output reg [7:0] letra
);

//variable de letra
reg [7:0] R;

always @ (posedge clockcito) begin
    
    R = $urandom % 3;
    if(R == 1)
    begin
        letra = 65;
    end
    else if( R == 2)
    begin
        letra = 66;
    end
    else
    begin
        letra = 67;
    end
    
end
endmodule