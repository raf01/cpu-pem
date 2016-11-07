module ucontrol(op_end, operando, opcode);

input [7:0]op_end;
output [7:0]operando;
output [3:0]opcode;
//output reg [3:0]endereco;
assign opcode[3:0] = op_end[3:0];
//assign endereco[3:0] = op_end[7:4];


	
endmodule	