`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/15 00:56:42
// Design Name: 
// Module Name: IR
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


module IR( IR, OP, ADR, clock, reset );
    input clock, reset;
    input[10:0] IR;
    output[2:0] OP;
    output[7:0] ADR;
    reg[2:0] OP;
    reg[7:0] ADR;
    
    always @( posedge clock or negedge reset )
    begin
        if( reset == 1'b0)
            {OP, ADR} <= 11'b000_0000_0000;
        else
            {OP, ADR} <= IR;
    end
endmodule
