`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/15 01:26:22
// Design Name: 
// Module Name: IR_tb
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


module IR_tb;
    reg clock, reset;
    reg[10:0] IR;
    wire[2:0] OP;
    wire[7:0] ADR;
    
    IR uut( .clock(clock), .reset(reset), .IR(IR), .OP(OP), .ADR(ADR) );
    
    always begin
        clock = 1'b0; #50;
        clock = 1'b1; #50; 
    end
    
    initial begin
                reset=0; IR=0;
        #10     reset=1;
        #100    IR = 11'b111_0000_1111;
        #100    IR = 11'b101_1111_0000;
        #200    reset = 0;
    end
endmodule
