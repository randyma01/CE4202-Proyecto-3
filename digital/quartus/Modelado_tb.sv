module Modelado_tb();

logic [31:0] x;
logic [31:0] y;
logic [31:0] result = 32'd0;


Modelado modelado (x, y, result);

initial
begin

	x = 32'b00000000000000111100100110011011;result = y;#10;
	
	x = 32'b00000010000000111100100110011011;#10;

end




endmodule
