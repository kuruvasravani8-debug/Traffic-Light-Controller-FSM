module traffic_light(
    input clk, rst,
    output reg [2:0] north, south, east, west
);
    reg [1:0] state, next_state;
    parameter RED=3'b100, YELLOW=3'b010, GREEN=3'b001;
    parameter N_GREEN=2'b00, E_GREEN=2'b01, S_GREEN=2'b10, W_GREEN=2'b11;

    always @(posedge clk or posedge rst) begin
        if(rst) state <= N_GREEN;
        else state <= next_state;
    end

    always @(*) begin
        case(state)
            N_GREEN: next_state = E_GREEN;
            E_GREEN: next_state = S_GREEN;
            S_GREEN: next_state = W_GREEN;
            W_GREEN: next_state = N_GREEN;
            default: next_state = N_GREEN;
        endcase
    end

    always @(*) begin
        case(state)
            N_GREEN: begin north=GREEN; south=RED; east=RED; west=RED; end
            E_GREEN: begin north=RED; south=RED; east=GREEN; west=RED; end
            S_GREEN: begin north=RED; south=GREEN; east=RED; west=RED; end
            W_GREEN: begin north=RED; south=RED; east=RED; west=GREEN; end
        endcase
    end
endmodule
