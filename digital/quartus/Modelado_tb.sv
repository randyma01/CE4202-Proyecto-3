module Modelado_tb();

logic [31:0] x;
logic [31:0] y;

Modelado modelado (x, y);

initial
begin

	x = 32'b00000000000000111100100110011011;

end




endmodule
