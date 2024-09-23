`timescale 1ns / 1ps

module random_led_simulator(
        input clk,
        input start_btn,
        input [6:0] ldr_sensors,
        output reg [6:0] leds_r
);

reg [1:0] state;
reg [2:0] random_number;
reg [16:0] counter;
reg [16:0] game_over_counter;
reg [4:0] score;
reg [31:0] counter;
reg [19:0] delay_counter;
reg laser_detected;
reg [4:0] targets;
reg game_ended;
wire clk_d;

initial begin
    leds_r = 7'b00000010;
    random_number = 3'b001;
    counter = 50_000;
    game_over_counter = 50_000;
    game_ended = 0;
    targets = 10;
    score = 0;
    laser_detected = 0;
end
clk_div clockdivider (clk, clk_d);

always @(posedge clk_d) begin
    case (state)
        2'b01: begin
            if (counter == 0 || laser_detected) begin
                counter = 50_000;
                laser_detected = 0; 
                targets = targets - 1;
                if (targets == 0) begin
                    state = 2'b10;
                end else begin
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
                end           
            end else begin
                counter <= counter - 1;
                if (ldr_sensors[random_number] == 0) begin
                    laser_detected <= 1;
                    score <= score + 1;
                end
            end
        end
        2'b00: begin
            leds_r <= 7'b1111111;
            if (start_btn == 1) begin
                state = 2'b01;
            end
        end
        2'b10: begin
            leds_r <= 7'b1111111;
            if (game_over_counter == 0) begin
                game_over_counter <= 50_000;
                state = 2'b00;
            end else begin
                game_over_counter <= game_over_counter - 1;
            end
        end
    endcase
end
endmodule
