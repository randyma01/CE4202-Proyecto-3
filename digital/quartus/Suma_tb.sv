module Suma_tb();

logic [31:0] a;
logic [31:0] b;
logic [31:0] result = 32'd0;

Suma suma (a, b, result);

initial
begin

	a = 32'b00000000000000111100100110011011;
	b = 32'b00000010000000111100100110011011;

end




endmodule
