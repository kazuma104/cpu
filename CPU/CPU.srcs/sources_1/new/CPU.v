`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/15 01:47:10
// Design Name: 
// Module Name: CPU
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


module CPU( IR_IN, OP, ADR, ACC, clock, reset );
    input clock, reset;
    input[10:0] IR_IN;
    output reg [2:0] OP;
    output reg [7:0] ADR;
    output reg [7:0] ACC;
    wire[7:0] ACC_OUT;
    
    IR IR( .IR_IN(IR_IN), .OP(OP), .ADR(ADR), .clock(clock), .reset(reset) );
    ALU8 ALU8( .ACC(ACC), .OP(OP), .ADR(ADR), .ALU_OUT(ALU_OUT) );
    ACC ACC2( .ACC(ACC), .ACC_OUT(ACC_OUT), .clock(clock), .reset(reset) );
    
endmodule
