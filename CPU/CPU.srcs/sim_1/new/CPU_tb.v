`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/15 02:00:31
// Design Name: 
// Module Name: CPU_tb
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


module CPU_tb;
    reg clock, reset;
    reg[10:0] IR_IN;
    wire [2:0] OP;
    wire [7:0] ADR;
    wire [7:0] ACC;

    CPU FF1( .IR_IN(IR_IN), .OP(OP), .ADR(ADR), .ACC(ACC), .clock(clock), .reset(reset) );
    
    always begin
        clock = 1'b0; #50;
        clock = 1'b1; #50; 
    end
    
    initial begin
            reset=0; IR_IN=0;
    #10     reset=1;
    #100    IR_IN = 11'b111_0000_1111;
    #100    IR_IN = 11'b101_1111_0000;
    #200    reset = 0;
    end
endmodule
