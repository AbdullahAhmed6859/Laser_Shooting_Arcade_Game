`timescale 1ns / 1ps


module clock_div(   
    input clk,
    output reg clk_div);
    parameter [31:0]div_value=1;
    reg [31:0]count;
    initial
    begin
       clk_div=0;
       count=0;
    end
     
    always @(posedge clk)
        begin
             if (count==div_value)
                count<=0;
             else count<=count+1;
        end
    always @(posedge clk)
        begin
             if (count==div_value)
             clk_div<= ~clk_div;
        end 
endmodule