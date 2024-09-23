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

module game_over(clk, Hcount, Vcount,video_on, red, blue, green

    );
    
    input clk;
    input [9:0] Hcount;
    input [9:0] Vcount;
    input video_on;
    output reg [3:0] red;
    output reg [3:0] blue;
    output reg [3:0] green;
    
    always @(posedge clk) begin
        if(Hcount>=70 && Hcount<170 && Vcount>=60 && Vcount<85) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=70 && Hcount<95 && Vcount>=85 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=95 && Hcount<170 && Vcount>=160 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=145 && Hcount<170 && Vcount>=110 && Vcount<160) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=120 && Hcount<145 && Vcount>=110 && Vcount<135) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        //A
        else if(Hcount>=195 && Hcount<220 && Vcount>=60 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=220 && Hcount<270 && Vcount>=60 && Vcount<85) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=220 && Hcount<270 && Vcount>=110 && Vcount<135) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=270 && Hcount<295 && Vcount>=60 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        //M
        else if(Hcount>=320 && Hcount<345 && Vcount>=60 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=345 && Hcount<420 && Vcount>=60 && Vcount<85) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=370 && Hcount<395 && Vcount>=85 && Vcount<135) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=420 && Hcount<445 && Vcount>=60 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        //E
        else if(Hcount>=470 && Hcount<495 && Vcount>=60 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=495 && Hcount<570 && Vcount>=60 && Vcount<85) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=495 && Hcount<570 && Vcount>=110 && Vcount<135) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=495 && Hcount<570 && Vcount>=160 && Vcount<185) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        //O
        else if(Hcount>=95 && Hcount<120 && Vcount>=210 && Vcount<335) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=120 && Hcount<170 && Vcount>=210 && Vcount<235) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=120 && Hcount<170 && Vcount>=310 && Vcount<335) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=170 && Hcount<195 && Vcount>=210 && Vcount<335) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end 
        //V
        else if(Hcount>=220 && Hcount<245 && Vcount>=210 && Vcount<285) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=220 && Hcount<255 && Vcount>=285 && Vcount<295) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=230 && Hcount<265 && Vcount>=295 && Vcount<305) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=240 && Hcount<300 && Vcount>=305 && Vcount<315) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=245 && Hcount<290 && Vcount>=315 && Vcount<325) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=255 && Hcount<280 && Vcount>=325 && Vcount<335) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=275 && Hcount<310 && Vcount>=295 && Vcount<305) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=285 && Hcount<320 && Vcount>=285 && Vcount<295) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=295 && Hcount<320 && Vcount>=210 && Vcount<285) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        //E
        else if(Hcount>=345 && Hcount<370 && Vcount>=210 && Vcount<335) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=370 && Hcount<445 && Vcount>=210 && Vcount<235) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=370 && Hcount<445 && Vcount>=260 && Vcount<285) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=370 && Hcount<445 && Vcount>=310 && Vcount<335) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        //R
        else if(Hcount>=470 && Hcount<495 && Vcount>=210 && Vcount<335) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=495 && Hcount<570 && Vcount>=210 && Vcount<235) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=545 && Hcount<570 && Vcount>=235 && Vcount<285) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=495 && Hcount<545 && Vcount>=260 && Vcount<285) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=505 && Hcount<530 && Vcount>=285 && Vcount<295) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=515 && Hcount<540 && Vcount>=295 && Vcount<305) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=525 && Hcount<550 && Vcount>=305 && Vcount<315) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=535 && Hcount<560 && Vcount>=315 && Vcount<325) begin
            red<=4'hF;
            blue<=4'hF;
            green<=4'hF;
        end
        else if(Hcount>=545 && Hcount<570 && Vcount>=325 && Vcount<335) begin
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
    
endmodule
