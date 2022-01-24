module Low_tb();

logic [15:0] b;
logic [15:0] d;
logic [31:0] result;

Low l (b, d, result);


initial
begin

b = 16'b1000000000000000;
d = 16'b0100000000000000;


end
endmodule
