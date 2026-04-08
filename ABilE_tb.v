// Full Name: Edmund Kendrick D. Bilanes
// Section: S01

`timescale 1ns/1ns
module ABilE_tb();
    reg X, clk, rst_n;
    wire [3:0] Q;

    // Instantiate design
    even_up_down_counter uut (Q, X, clk, rst_n);

    // Clock: Half cycle of 5 time units
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // Monitor inputs and outputs
        $monitor("Time=%0t | reset=%b | X=%b | clk=%b | Q=%b (%d)", 
                 $time, rst_n, X, clk, Q, Q);

        // Reset=0, then after 10 time units, reset=1
        rst_n = 0; X = 0;
        #10 rst_n = 1;

        // X=0 Downstream (1110 -> 1100 -> 1010...)
        X = 0;
        #80; 

        // X=1 Upstream (0000 -> 0010 -> 0100...)
        X = 1;
        #80;

        $finish;
    end
endmodule