module ula(ledsSaida, operando, opcode);

reg [3:0]opcode;
reg [7:0]operando;


always @(1)
	begin
		case(operando)
			0: acumulador = operando;
			1: ledsSaida <= operando + acumulador;
			2: ledsSaida <= operando - acumulador;		
			3: ledsSaida <= (acumulador * operando);
			4: ledsSaida <= (acumulador / operando);
			5: ledsSaida <= (acumulador & operando);
			6: ledsSaida <= (acumulador | operando);
			7: ledsSaida <= (acumulador ^ operando);
			
			//7: LEDG <= (regA ~| regB);
		endcase
	end

	registrador register(operando);
	acumulador macumulador(acumulador);
endmodule 