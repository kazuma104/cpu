@echo off
set xv_path=C:\\usr\\local\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim nbit_register_tb_behav -key {Behavioral:sim_1:Functional:nbit_register_tb} -tclbatch nbit_register_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
