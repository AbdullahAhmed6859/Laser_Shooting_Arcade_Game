`timescale 1ns / 1ps


module v_counter(clk, enable, v_count);
input clk;
input [0:0] enable;
output [9:0] v_count;
reg [9:0] v_count;
initial v_count=0;
always @(posedge clk)
begin 
if (v_count <= 523) begin

if (enable==1'b1) begin
v_count <= v_count+1;
end
end
else
begin
v_count <=0;
end
end
endmodule