//tercer Ejercicio
module Ejercicio(
    input [4:0] limiteInferior,
    input [4:0] limiteSuperior,
    input [4:0] numero,    
    //es tipo Boolean False = 0, True =1
    output reg seEncuentraDentro    
);

    //variable para hacer C2
    reg inferiorNegativo;
    reg superiorNegativo;
    reg numeroNegativo;
    reg[4:0] one;
    
    //OJO!!!!
    //signed registers no funciona en Digital!!!!!!!
    reg signed [4:0] _limiteInferior;
    reg signed [4:0] _limiteSuperior;
    reg signed [4:0] _numero;

    initial begin
        one=1;
        inferiorNegativo = 0;
        superiorNegativo = 0;
        numeroNegativo = 0;
        
        _limiteInferior = limiteInferior;
        _limiteSuperior = limiteSuperior;
        _numero = numero;
    end

    always @ (*)
    begin

        //Cambiar los números si son Negativos a su C2
        if ( limiteInferior[4] == 1)  
        begin
            _limiteInferior = (~_limiteInferior) + one;
            inferiorNegativo = 1;
        end 
        if ( limiteSuperior[4] == 1)  //
        begin
            _limiteSuperior = (~_limiteSuperior) + one;
            superiorNegativo = 1;
        end
        if ( numero[4] == 1)  //
        begin
            _numero = (~_numero) + one;
            numeroNegativo = 1;
        end

        //Analizar los Modulos        
        if ( _inferiorNegativo == 1 && _superiorNegativo == 1)
        begin
            if(numeroNegativo==0)
            begin
                //si los numeros inferior y superior son negativos pero el numero es positivo, por default sabemos que no está dentro
                //seEncuentraDentro = 1;
                seEncuentraDentro = 0;                
            end
            else if(numeroNegativo==1)
            begin
                if (_numero < _limiteInferior && _numero > _limiteSuperior)
                begin
                    seEncuentraDentro = 1;
                end
                else
                begin 
                    seEncuentraDentro = 0;
                end                
            end            
        end
        //falta
        else if ( _inferiorNegativo == 1 && _superiorNegativo == 0)
        begin
            if(numeroNegativo==0)
            begin
                seEncuentraDentro = 1;
                seEncuentraDentro = 0;                
            end
            else if(numeroNegativo==1)
            begin
                seEncuentraDentro = 1;
                seEncuentraDentro = 0;
            end
        end
        //falta
        else if ( inferiorNegativo == 1 && superiorNegativo == 0)
        begin
            if(numeroNegativo==0)
            begin
                seEncuentraDentro = 1;
                seEncuentraDentro = 0;                
            end
            else if(numeroNegativo==1)
            begin
                seEncuentraDentro = 1;
                seEncuentraDentro = 0;
            end
        end
        //done?
        else
        begin
            seEncuentraDentro = 0;
        end
        

    end
endmodule