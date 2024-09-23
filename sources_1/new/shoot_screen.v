`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2024 03:24:43 PM
// Design Name: 
// Module Name: shoot_screen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module shoot_screen(clk, Hcount, Vcount,video_on, red, green, blue

    );
    
    input clk;
    input [9:0] Hcount;
    input [9:0] Vcount;
    input video_on;
    output reg [3:0] red;
    output reg [3:0] blue;
    output reg [3:0] green;
    
    always @(posedge clk) begin
    if (video_on==1) begin
        if(Hcount>=10 && Hcount<600 && Vcount>=60 && Vcount<480) begin
//        s
            if(Hcount>=130 && Hcount<205 && Vcount>=143 && Vcount<158) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=130 && Hcount<145 && Vcount>=158 && Vcount<188) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=130 && Hcount<205 && Vcount>=173 && Vcount<188) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=190 && Hcount<205 && Vcount>=188 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=130 && Hcount<205 && Vcount>=203 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            //h
            else if(Hcount>=220 && Hcount<235 && Vcount>=143 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=220 && Hcount<280 && Vcount>=173 && Vcount<188) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if (Hcount>=265 && Hcount<280 && Vcount>=143 && Vcount<218)begin
            red <= 4'hF;
            blue <= 4'hF;
            green <= 4'hF;
            end
            //o
            else if(Hcount>=295 && Hcount<370 && Vcount>=143 && Vcount<158) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=295 && Hcount<310 && Vcount>=143 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=295 && Hcount<370 && Vcount>=203 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=355 && Hcount<370 && Vcount>=143 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            //o
            else if(Hcount>=385 && Hcount<460 && Vcount>=143 && Vcount<158) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=385 && Hcount<400 && Vcount>=143 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=385 && Hcount<460 && Vcount>=203 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=445 && Hcount<460 && Vcount>=145 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            //T
            else if(Hcount>=475 && Hcount<550 && Vcount>=143 && Vcount<158) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else if(Hcount>=505 && Hcount<520 && Vcount>=158 && Vcount<218) begin
                red<=4'hF;
                blue<=4'hF;
                green<=4'hF;
            end
            else begin
                red<=4'h0;
                blue<=4'h0;
                green<=4'h0;
            end
        end
        else begin
            red<=4'h0;
            blue<=4'h0;
            green<=4'h0;
        end
    end 
    end
    
endmodule