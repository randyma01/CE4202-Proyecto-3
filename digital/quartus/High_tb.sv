module High_tb();

logic [14:0] a;
logic [14:0] c;
logic [31:0] result;

High h (a, c, result);


initial
begin

a = 15'd1;
c = 15'd3;


end
endmodule
