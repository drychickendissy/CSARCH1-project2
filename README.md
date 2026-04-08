# CSARCH1 Project
## HDL Project 2

### College of Computer Studies — De La Salle University  
### Course: CSARCH1 — INTRODUCTION TO COMPUTER ORGANIZATION AND ARCHITECTURE
Contributor: Bilanes Edmund Kendrick D.

---

# Project Specifications

Write a Verilog STRUCTURAL (using FF input/output function) model HDL program for an even up-down Binary counter.  Additional  specifications below:

*Implement using T flip flops.

*The sequential circuit has the following inputs: Y, reset, and clock.

*When Y==1 and reset==1, the counter is an upstream state transition:

0000-->0010-->0100-->0110-->1000-->1010-->1100-->1110, back to 0000, and repeats.

*When Y==0 and reset==1, the circuit is a downstream state transition: 

1110-->1100-->1010-->1000-->0110-->0100-->0010-->0000, back to 1110, and repeats.

*If reset==0 and regardless of the value of Y, output is 0000.

*reset is negative edge.

*clock is positive edge with half cycle of 5 time units (i.e., #5 clock = ~clock).

---

# Project Testbench

Use the following test cases for the testbench:
Initially: reset=0, then after 10 time units, change the reset value to 1.
Then x=0 and ensure enough simulation time to show the entire counter transition.
Then, x=1 and ensure enough simulation time to show the entire counter transition.
Print/monitor the value of the inputs (clk, reset, X) and outputs..
