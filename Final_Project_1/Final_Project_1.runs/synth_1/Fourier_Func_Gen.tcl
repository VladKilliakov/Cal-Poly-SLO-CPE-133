# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.srcs/sources_1/new/Fourier_Register.vhd
  C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.srcs/sources_1/new/Sev_Seg_Driver.vhd
  C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.srcs/sources_1/new/Sigma_Delta.vhd
  C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.srcs/sources_1/new/Clock_Divider.vhd
  C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.srcs/sources_1/new/Fourier_Func_Gen.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.srcs/constrs_1/new/Constraints.xdc
set_property used_in_implementation false [get_files C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.srcs/constrs_1/new/Constraints.xdc]


synth_design -top Fourier_Func_Gen -part xc7a35tcpg236-1


write_checkpoint -force -noxdef Fourier_Func_Gen.dcp

catch { report_utilization -file Fourier_Func_Gen_utilization_synth.rpt -pb Fourier_Func_Gen_utilization_synth.pb }
