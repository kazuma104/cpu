`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/12 04:42:18
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb;
    reg[7:0] din;
    reg[2:0] read, write;
    reg[2:0] sel;
    reg clk, reset;
    reg ACCload;
    wire[7:0] dout, ACCout, ALUout;
    
    register_file FF1( .din(din), .read(read), .write(write), .clk(clk), .sel(sel), .reset(reset), .ACCload(ACCload),
        .dout(dout), .ACCout(ACCout), .ALUout(ALUout) );
    
    always begin
        clk = 1'b1; #50;
        clk = 1'b0; #50;
    end
    
    initial begin
        clk = 1'b0; sel=0; din = 0; read=0; write=0; reset=0; ACCload=0;
    #50 reset=1;
    #100 din = 8'h12; sel = 3'b100; write = 3'b000;
    #100 din = 8'h34; write = 3'b001;
    #100 din = 8'h00; ACCload = 1; read = 3'b000; write = 3'b010;
    #100 ACCload = 0; read = 3'b001; sel = 3'b000; write = 3'b010;
    #100 read = 3'b010; sel = 3'bxxx;
    #100 $finish;
    end
endmodule
