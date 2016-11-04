module cpupem (SW, KEY, LEDR, LEDG,clock);

input [8:0] SW;  // Dados de entrada da ULA + bit de enable
input [0:0] KEY; // Clock antigo
input clock;
output [7:0] LEDR; // Exibiçao dos bits do registrador 
output [7:0] LEDG; // Exibiçao dos bits do registrador 

reg [7:0] ledsSaida;
wire [7:0] dataIn;
reg [3:0] address;
wire writeEnable;
reg [7:0] mem [15:0];

assign LEDR [7:0] = ledsSaida [7:0];
assign Clockn = !Clock, Clock = KEY[0];
assign writeEnable = SW[8];
assign dataIn[7:0] = SW[7:0];

	ram mRAM (LEDG[7:0], address, dataIn, writeEnable, clock);
	ula mula(operandoA, operandoB, opcode, ledsRegSaida, regSaida);
endmodule