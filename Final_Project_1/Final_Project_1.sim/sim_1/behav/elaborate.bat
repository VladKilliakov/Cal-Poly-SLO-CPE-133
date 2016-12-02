@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 9a0fb06f75ff4f43be05adf610693270 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Sim_behav xil_defaultlib.Sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
