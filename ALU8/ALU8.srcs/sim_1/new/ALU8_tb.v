`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/12 16:29:32
// Design Name: 
// Module Name: ALU8_tb
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


module ALU8_tb;
    reg[7:0] ALU_OUT, ADR;
    reg[2:0] OP;
   
    wire[7:0] ALU_OUT;
    
    ALU8 uut(
        .ALU_OUT(ALU_OUT),
        .ADR(ADR),
        .OP(OP),
        .ALU_OUT(ALU_OUT)
    );
    
    initial begin
        ALU_OUT = 0; ADR = 0; OP = 0;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b000;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b000;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b000;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b001;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b001;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b001;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b010;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b010;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b010;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b011;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b011;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b011;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b100;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b100;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b100;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b101;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b101;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b101;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b110;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b110;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b110;
    #10 ALU_OUT = 8'h12; ADR = 8'h34; OP = 3'b111;
    #10 ALU_OUT = 8'h43; ADR = 8'h21; OP = 3'b111;
    #10 ALU_OUT = 8'ha6; ADR = 8'hf0; OP = 3'b111;
    #10 $finish;
    end
endmodule
