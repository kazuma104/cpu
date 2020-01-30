@echo off
set xv_path=C:\\usr\\local\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 0b6d51ce16df4e1199ed2dc3c1ba0091 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot nbit_register_tb_behav xil_defaultlib.nbit_register_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
