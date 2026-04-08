// Full Name: Edmund Kendrick D. Bilanes
// Section: S01

module T_FF (output reg Q, input T, clk, rst_n);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) Q <= 1'b0;
        else if (T) Q <= ~Q;
    end
endmodule

module even_up_down_counter (output [3:0] Q, input X, clk, rst_n);
    wire t1, t2, t3;
    assign Q[0] = 1'b0; // Force even

    // Structural T-input logic for Up-Down
    assign t1 = 1'b1;
    assign t2 = (Q[1] & X) | (~Q[1] & ~X);
    assign t3 = (Q[2] & Q[1] & X) | (~Q[2] & ~Q[1] & ~X);

    T_FF ff1 (Q[1], t1, clk, rst_n);
    T_FF ff2 (Q[2], t2, clk, rst_n);
    T_FF ff3 (Q[3], t3, clk, rst_n);
endmodule