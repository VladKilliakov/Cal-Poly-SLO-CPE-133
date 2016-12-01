@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto adb3ca39993c4d0fb15f025899b97e63 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Sim_behav xil_defaultlib.Sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
