`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/12 03:29:06
// Design Name: 
// Module Name: register_file
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


module register_file( din, read, write, sel, clk, reset, ACCload, dout, ACCout, ALUout);
    input[7:0] din;
    input[2:0] read,write;
    input[2:0] sel;
    input clk, reset;
    input ACCload;
    output wire[7:0] dout, ACCout, ALUout;
    
    wire[7:0] load;
    decode3to8 dec( .din(write), .dout(load) );
    
    wire[7:0] regAout, regBout, regCout, regDout, regEout, regFout, regGout, regHout;
    nbit_register regA( .din(ALUout), .dout(regAout), .load(load[0]), .clk(clk), .reset(reset) );
    nbit_register regB( .din(ALUout), .dout(regBout), .load(load[1]), .clk(clk), .reset(reset) );
    nbit_register regC( .din(ALUout), .dout(regCout), .load(load[2]), .clk(clk), .reset(reset) );
    nbit_register regD( .din(ALUout), .dout(regDout), .load(load[3]), .clk(clk), .reset(reset) );
    nbit_register regE( .din(ALUout), .dout(regEout), .load(load[4]), .clk(clk), .reset(reset) );
    nbit_register regF( .din(ALUout), .dout(regFout), .load(load[5]), .clk(clk), .reset(reset) );
    nbit_register regG( .din(ALUout), .dout(regGout), .load(load[6]), .clk(clk), .reset(reset) );
    nbit_register regH( .din(ALUout), .dout(regHout), .load(load[7]), .clk(clk), .reset(reset) );
    mux8 mux( .sel(read), .din0(regAout), .din1(regBout), .din2(regCout), .din3(regDout),
        .din4(regEout), .din5(regFout), .din6(regGout), .din7(regHout), .dout(dout) );
    ACC ACC( .accin(dout), .accout(ACCout), .load(ACCload), .clk(clk), .reset(reset) );
    ALU ALU( .a(ACCout), .b(dout), .din(din), .sel(sel), .q(ALUout));
    
endmodule
