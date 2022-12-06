module reloj24H(
    input clk,
    input minutos,
    input horas,
    output reg [3:0] segundoDer,
    output reg [3:0] segundoIzq,		
    output reg [3:0] minutosDer,
    output reg [3:0] minutosIzq,
    output reg [3:0] horasDiDer,
    output reg [1:0] horasDiIzq
);

initial begin
        segundoDer = 0;
        segundoIzq = 0;
        minutosDer = 0;
        minutosIzq = 0;
        horasDiDer = 0;
        horasDiIzq = 0;
end

always @ (posedge clk) begin
               
        if (segundoDer == 9)
        begin
            segundoDer <= 0;
            segundoIzq = segundoIzq + 1;
            if(segundoIzq == 6)
            begin

                segundoIzq <= 0;
                minutosDer = minutosDer + 1;
                
                if (minutosDer == 10)
                begin
                    minutosDer <= 0;
                    minutosIzq = minutosIzq + 1; // le quitamos el <

                    if(minutosIzq == 6)
                    begin
                        minutosIzq <=0;
                        horasDiDer = horasDiDer +1;
                        if(horasDiDer == 10)
                        begin
                            horasDiDer <=0;
                            horasDiIzq = horasDiIzq + 1;                            
                        end                        
                    end                    
                end

            end                        
        end
        else
        begin
            segundoDer = segundoDer + 1;
        end
        if(horasDiIzq == 2 && horasDiDer ==4)
        begin             
            segundoDer <= 0;
            segundoIzq <= 0;
            minutosDer <= 0;
            minutosIzq <= 0;
            horasDiDer <= 0;
            horasDiIzq <= 0;
        end                                 
end
//clicker de los minutos
always @ (posedge minutos) begin
    minutosDer = minutosDer + 1;
    if (minutosDer == 10)
    begin
        minutosDer <= 0;
        minutosIzq = minutosIzq + 1; // le quitamos el <

        if(minutosIzq == 6)
        begin
            minutosIzq <=0;
            horasDiDer = horasDiDer +1;
            if(horasDiDer == 10)
            begin
                horasDiDer <=0;
                horasDiIzq = horasDiIzq + 1;                            
            end                        
        end
    end

    //checks if 24 para que resetee
    if(horasDiIzq == 2 && horasDiDer ==4)
    begin         
        segundoDer <= 0;
        segundoIzq <= 0;
        minutosDer <= 0;
        minutosIzq <= 0;
        horasDiDer <= 0;
        horasDiIzq <= 0;
    end
end
//clicker de las horas
always @ (posedge horas) begin
    horasDiDer = horasDiDer +1;
    if(horasDiDer == 10)
    begin
        horasDiDer <=0;
        horasDiIzq = horasDiIzq + 1;                            
    end

    //checks if 24 para que resetee
    if(horasDiIzq == 2 && horasDiDer ==4)
    begin         
        segundoDer <= 0;
        segundoIzq <= 0;
        minutosDer <= 0;
        minutosIzq <= 0;
        horasDiDer <= 0;
        horasDiIzq <= 0;
    end

end

endmodule