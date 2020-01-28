`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/12 16:19:05
// Design Name: 
// Module Name: ALU8
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

//ADR:アドレス OP:オペランド×→オペコード〇
module ALU8( ACC, OP, ADR, ALU_OUT);
    input[7:0] ACC, ADR;
    input[2:0] OP;
    
    output[7:0] ALU_OUT;
    reg[7:0] ALU_OUT;
    
    always @(ACC or ADR or OP)
    begin
        case(OP)
            3'b000: ALU_OUT = ADR;
            3'b001: ALU_OUT = ACC + ADR;
            3'b010: ALU_OUT = ACC - ADR;
            3'b011: ALU_OUT = ACC * ADR;
            3'b100: ALU_OUT = ACC | ADR;
            3'b101: ALU_OUT = ACC & ADR;
            3'b110: ALU_OUT = ~ACC;
            3'b111: ALU_OUT = 0; 
            default: ALU_OUT = 8'hxx;
        endcase
    end
endmodule
