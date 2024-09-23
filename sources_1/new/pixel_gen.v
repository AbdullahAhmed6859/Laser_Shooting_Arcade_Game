`timescale 1ns / 1ps


module pixel_gen(clk, Hcount, Vcount,video_on, red, green, blue, state, score, led

    );
    
    input clk;
    input [9:0] Hcount;
    input [9:0] Vcount;
    input video_on;
    input [1:0] state;
    input [3:0] score;
    input [2:0] led;
    output reg [3:0] red;
    output reg [3:0] blue;
    output reg [3:0] green;
    
        localparam DIGIT_WIDTH = 40;
    localparam DIGIT_HEIGHT = 60;
    localparam DIGIT_X_POS = 300;
    localparam DIGIT_Y_POS = 200;
    localparam DIGIT_Y_POS_2 = 400;
        localparam COLOR_BACKGROUND = 12'h000; // Black background
    localparam COLOR_DIGIT_1 = 12'hFFF; // White color for digit 1
    always @(posedge clk) begin
        case (state)
            2'b00: begin
                if (video_on==1) begin
                    if(Hcount>=115 && Hcount<580 && Vcount>=70 && Vcount<300) begin
                        if(Hcount>=130 && Hcount<205 && Vcount>=143 && Vcount<158) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=130 && Hcount<145 && Vcount>=158 && Vcount<188) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=145 && Hcount<205 && Vcount>=173 && Vcount<188) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=190 && Hcount<205 && Vcount>=188 && Vcount<218) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=130 && Hcount<205 && Vcount>=203 && Vcount<218) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        //T
                        else if(Hcount>=220 && Hcount<295 && Vcount>=143 && Vcount<158) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=250 && Hcount<265 && Vcount>=158 && Vcount<218) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        //A
                        else if(Hcount>=310 && Hcount<325 && Vcount>=143 && Vcount<218) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=325 && Hcount<378 && Vcount>=143 && Vcount<158) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=363 && Hcount<378 && Vcount>=158 && Vcount<218) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=325 && Hcount<363 && Vcount>=173 && Vcount<188) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        //r
                        else if(Hcount>=393 && Hcount<408 && Vcount>=143 && Vcount<218) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=408 && Hcount<423 && Vcount>=158 && Vcount<173) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=415 && Hcount<430 && Vcount>=150 && Vcount<165) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=423 && Hcount<460 && Vcount>=143 && Vcount<158) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        //T
                        else if(Hcount>=475 && Hcount<575 && Vcount>=143 && Vcount<158) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else if(Hcount>=515 && Hcount<535 && Vcount>=158 && Vcount<218) begin
                            red<=4'h0;
                            blue<=4'hF;
                            green<=4'h0;
                        end
                        else begin
                            red<=4'h0;
                            blue<=4'h0;
                            green<=4'h0;
                        end
                    end
                    else if (Hcount>=75 && Hcount<580 && Vcount >= 250 && Vcount <= 700) begin 
                    
                    if (Hcount >= 200 && Hcount<= 530 && Vcount >= 300 && Vcount <= 315) begin 
                    red <= 4'hF;
                    blue<=4'hF;
                    green<=4'hF;
                    end 
                    else if (Hcount >= 300 && Hcount <= 530 && Vcount >= 360 && Vcount <= 385 ) begin 
                    red <= 4'hF;
                    blue<=4'hF;
                    green<=4'hF;
                    end  
                    else if (Hcount >= 150 && Hcount <= 200 && Vcount <= 307 && Vcount <= 312) begin 
                    red <= 4'hF;
                    blue<=4'h0;
                    green<=4'h0;
                    end 
                    else if (Hcount >= 300 && Hcount <= 530 && Vcount >= 315 && Vcount <= 330)begin 
                    red <= 4'hF;
                    blue<=4'hF;
                    green<=4'hF;
                    end 
                    else if (Hcount >= 300 && Hcount <= 320 && Vcount >= 315 && Vcount <= 375 ) begin   
                     red <= 4'hF;
                    blue<=4'hF;
                    green<=4'hF;
                    end 
                    else if (Hcount >= 500 && Hcount<= 530 && Vcount >= 300 && Vcount <= 500 ) begin 
                    red <= 4'hF;
                    blue<=4'hF;
                    green<=4'hF;
                    end 
            
                    else begin
                        red<=4'h0;
                        blue<=4'h0;
                        green<=4'h0;
                    end
                end 
                end
            end
            2'b01: begin
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
            2'b10: begin
                if (video_on) begin
                if (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) begin
                    case (score)
                        0: begin
                            if ((Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) ||
                            (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                            (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + 10 && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                            (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        1: begin
                            // Display digit 1
                            if (Hcount >= DIGIT_X_POS + 15 && Hcount < DIGIT_X_POS + 25 && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        2: begin
                            // Display digit 2
                            if (
                                // Check top horizontal bar
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && 
                                 Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) || 
                            
                                // Check bottom horizontal bar
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && 
                                 Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) || 
                            
                                // Check right vertical bar (upper half)
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && 
                                 Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2) || 
                            
                                // Check left vertical bar (lower half)
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + 10 && 
                                 Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) || 
                            
                                // Check middle horizontal bar
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && 
                                 Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5)
                            ) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        3: begin
                            // Display digit 3
                            if ((Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        
                        4: begin // Display digit 4
                            if (
                                // Check right vertical bar
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && 
                                 Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) || 
                                
                                // Check left vertical bar (upper half)
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + 10 && 
                                 Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2) ||
                                
                                // Check middle horizontal bar
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && 
                                 Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5)
                            ) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        5: begin // Display digit 5
                            if ((Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + 10 && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2) ||
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        6: begin // Display digit 6
                            if ((Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + 10 && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end    
                        7: begin // Display digit 7
                            if ((Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) ||
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        8: begin // Display digit 8
                            if ((Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + 10 && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        9: begin // Display digit 9
                            if ((Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + 10) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (Hcount >= DIGIT_X_POS && Hcount < DIGIT_X_POS + 10 && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT/2) ||
                                (Hcount >= DIGIT_X_POS + DIGIT_WIDTH - 10 && Hcount < DIGIT_X_POS + DIGIT_WIDTH && Vcount >= DIGIT_Y_POS && Vcount < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        default: begin
                            {red, green, blue} = COLOR_BACKGROUND;
                        end
                    endcase
                end else begin
                    //0
                    if ((Hcount - 170)**2 + (Vcount - 210)**2 <= 100) begin
                        if (led == 3'b000) {red, green, blue} = 12'hF00;
                        else {red, green, blue} = COLOR_DIGIT_1;
                    end
                    //1
                    else if ((Hcount - 220)**2 + (Vcount - 160)**2 <= 100) begin
                        if (led == 3'b001) {red, green, blue} = 12'hF00;
                        else {red, green, blue} = COLOR_DIGIT_1;
                    end
                    //2
                    else if ((Hcount - 270)**2 + (Vcount - 110)**2 <= 100) begin
                        if (led == 3'b010) {red, green, blue} = 12'hF00;
                        else {red, green, blue} = COLOR_DIGIT_1;
                    end
                    //3
                    else if ((Hcount - 320)**2 + (Vcount - 60)**2 <= 100) begin
                        if (led == 3'b011) {red, green, blue} = 12'hF00;
                        else {red, green, blue} = COLOR_DIGIT_1;
                    end
                    //4
                    else if ((Hcount - 370)**2 + (Vcount - 110)**2 <= 100) begin
                        if (led == 3'b100) {red, green, blue} = 12'hF00;
                        else {red, green, blue} = COLOR_DIGIT_1;
                    end
                    //5 
                    else if ((Hcount - 420)**2 + (Vcount - 160)**2 <= 100) begin
                        if (led == 3'b101) {red, green, blue} = 12'hF00;
                        else {red, green, blue} = COLOR_DIGIT_1;
                    end
                    //6
                    else if ((Hcount - 470)**2 + (Vcount - 210)**2 <= 100) begin
                        if (led == 3'b110) {red, green, blue} = 12'hF00;
                        else {red, green, blue} = COLOR_DIGIT_1;
                    end
                    else begin
                        {red, green, blue} = COLOR_BACKGROUND;
                    end
                end
            end else begin
                {red, green, blue} = 12'h000; // Display black color when video is off
            end
            end
            2'b11: begin
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
            end //hello
        endcase
    end
    
endmodule