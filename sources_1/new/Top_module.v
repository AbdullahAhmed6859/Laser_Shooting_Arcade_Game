`timescale 1ns / 1ps

module top_lvl_module(input clk,
    input start_btn,
    input rst,
    input [6:0] ldr_sensors,
    output reg [6:0] leds_r,
    output h_sync,
    output v_sync,
    output  [3:0] red, //instantiating red, blue ,green
    output  [3:0] green,
    output  [3:0] blue);
    
wire clk_d;
wire [9:0] h_count;
wire trig_v;
wire [9:0] v_count;
wire video_on;
wire [9:0] x_loc;
wire [9:0] y_loc;
reg [1:0] state;
reg [2:0] random_number;
reg [16:0] counter;
reg [16:0] game_over_counter;
reg [3:0] score;
reg [31:0] counter;
reg [19:0] delay_counter;
reg laser_detected;
reg [4:0] targets;
wire clk_d_2;
wire rst;

clk_divvv t1(clk, clk_d);
h_counter t2(clk_d, h_count, trig_v);
v_counter t3(clk_d, trig_v, v_count);
vga_sync t4(h_count, v_count, h_sync, v_sync, video_on,x_loc,y_loc);
pixel_gen t5(clk_d,x_loc, y_loc,video_on,red,green,blue, state, score, random_number);



initial begin
    leds_r = 7'b0001000;
    random_number = 3'b001;
    counter = 15_000;
    game_over_counter = 50_000;
    state = 2'b00;
    targets = 11;
    score = 0;
    laser_detected = 0;
end

clk_div clockdivider (clk, clk_d_2);

always @(posedge clk_d_2) begin
    if (rst) begin
        leds_r = 7'b0001000;
        random_number = 3'b001;
        counter = 15_000;
        game_over_counter = 50_000;
        state = 2'b00;
        targets = 11;
        score = 0;
        laser_detected = 0;
    end
    case (state)
        2'b01: begin
            if (game_over_counter <= 0) begin
                state = 2'b10;
                counter = 0;
                game_over_counter = 50_000;
            end else begin
                game_over_counter <= game_over_counter - 1;
            end
        end
        2'b10: begin
            if (targets <= 0) begin
                state = 2'b11;
                leds_r = 7'b1111111;
                targets = 11;
                score = 0;
                laser_detected = 0;
                counter = 30_000;
            end else begin
                if (counter == 0 || laser_detected) begin
                    counter = 15_000;
                    laser_detected = 0; 
                    targets = targets - 1;
                    case (random_number)
                        3'b000: begin
                            random_number = 3'b011;
                            leds_r = 7'b0001000;
                        end
                        3'b001: begin
                            random_number = 3'b101;
                            leds_r = 7'b0100000;
                        end
                        3'b010: begin
                            random_number = 3'b100;
                            leds_r = 7'b0010000;
                        end
                        3'b011: begin
                            random_number = 3'b010;
                            leds_r = 7'b0000100;
                        end
                        3'b100: begin
                            random_number = 3'b110;
                            leds_r = 7'b1000000;
                        end
                        3'b101: begin
                            random_number = 3'b000;
                            leds_r = 7'b0000001;
                        end
                        3'b110: begin
                            random_number = 3'b001;
                            leds_r = 7'b0000010;
                        end
                    endcase          
                end else begin
                    counter <= counter - 1;
                    if (ldr_sensors[random_number] == 0) begin
                        laser_detected <= 1;
                        score <= score + 1;
                    end
                end
            end
        end
        2'b00: begin
            if (ldr_sensors[3] == 0) begin
                state = 2'b01;
                leds_r  = 7'b1111111;
            end
        end
        2'b11: begin
            if (game_over_counter == 0) begin
                game_over_counter = 50_000;
                state = 2'b00;
                leds_r = 7'b0001000;
            end else begin
                game_over_counter <= game_over_counter - 1;
            end
        end
    endcase
end
endmodule
