`timescale 1ns / 1ps
module score_display(
    input clk_d,
    input [9:0] x_loc,
    input [9:0] y_loc,
    input video_on,
    output reg [3:0] red,
    output reg [3:0] green,
    output reg [3:0] blue,
    input [1:0] state,
    input [3:0] score
);

    // Define the colors for each digit
    localparam COLOR_BACKGROUND = 12'h000; // Black background
    localparam COLOR_DIGIT_1 = 12'hFFF; // White color for digit 1
//    localparam COLOR_DIGIT_2 = 12'hF00; // Red color for digit 2
//    localparam COLOR_DIGIT_3 = 12'h0F0; // Green color for digit 3

    // Define the pixel positions for each digit
    localparam DIGIT_WIDTH = 40;
    localparam DIGIT_HEIGHT = 60;
    localparam DIGIT_X_POS = 100;
    localparam DIGIT_Y_POS = 100;

    always @(posedge clk_d) begin
        if (state == 2'b10) begin
            if (video_on) begin
                if (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) begin
                    case (score)
                        0: begin
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                            (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                            (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + 10 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                            (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        1: begin
                            // Display digit 1
                            if (x_loc >= DIGIT_X_POS + 15 && x_loc < DIGIT_X_POS + 25 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        2: begin
                            // Display digit 2
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + 10 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        3: begin
                            // Display digit 3
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        
                        4: begin // Display digit 4
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + 10 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        5: begin // Display digit 5
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + 10 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        6: begin // Display digit 6
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + 10 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end    
                        7: begin // Display digit 7
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        8: begin // Display digit 8
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT - 10 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + 10 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        9: begin // Display digit 9
                            if ((x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + 10) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS + DIGIT_HEIGHT/2 - 5 && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2 + 5) ||
                                (x_loc >= DIGIT_X_POS && x_loc < DIGIT_X_POS + 10 && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT/2) ||
                                (x_loc >= DIGIT_X_POS + DIGIT_WIDTH - 10 && x_loc < DIGIT_X_POS + DIGIT_WIDTH && y_loc >= DIGIT_Y_POS && y_loc < DIGIT_Y_POS + DIGIT_HEIGHT)) begin
                                {red, green, blue} = COLOR_DIGIT_1;
                            end else begin
                                {red, green, blue} = COLOR_BACKGROUND;
                            end
                        end
                        default: begin
                            {red, green, blue} = COLOR_BACKGROUND;
                        end
                    endcase
                end else begin0
                    {red, green, blue} = COLOR_BACKGROUND;
                end
            end else begin
                {red, green, blue} = 12'h000; // Display black color when video is off
            end
        end
    end
endmodule
