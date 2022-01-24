module Mid_tb();

logic [14:0] a;
logic [15:0] b;
logic [14:0] c;
logic [15:0] d;

logic [31:0] result;

Mid m (a,b,c,d, result);


initial
begin

a = 15'd1;
b = 16'b1000000000000000;
c = 15'd3;
d = 16'b0100000000000000;


end
endmodule
