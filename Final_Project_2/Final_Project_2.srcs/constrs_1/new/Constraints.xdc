set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports R_Button]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports Dac_Out]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports M_Button]
set_property IOSTANDARD LVCMOS33 [get_ports L_Button]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports Reset]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Switches[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[5]}]
set_property PACKAGE_PIN W4 [get_ports {AnBus[0]}]
set_property PACKAGE_PIN U2 [get_ports {AnBus[1]}]
set_property PACKAGE_PIN U4 [get_ports {AnBus[2]}]
set_property PACKAGE_PIN V7 [get_ports {CaBus[0]}]
set_property PACKAGE_PIN U7 [get_ports {CaBus[1]}]
set_property PACKAGE_PIN V5 [get_ports {CaBus[2]}]
set_property PACKAGE_PIN U5 [get_ports {CaBus[3]}]
set_property PACKAGE_PIN V8 [get_ports {CaBus[4]}]
set_property PACKAGE_PIN U8 [get_ports {CaBus[5]}]
set_property PACKAGE_PIN W6 [get_ports {CaBus[6]}]
set_property PACKAGE_PIN W7 [get_ports {CaBus[7]}]
set_property PACKAGE_PIN W5 [get_ports Clk]
set_property PACKAGE_PIN J1 [get_ports Dac_Out]
set_property PACKAGE_PIN W19 [get_ports L_Button]
set_property PACKAGE_PIN U18 [get_ports M_Button]
set_property PACKAGE_PIN T17 [get_ports R_Button]
set_property PACKAGE_PIN T18 [get_ports Reset]
set_property PACKAGE_PIN V17 [get_ports {Switches[0]}]
set_property PACKAGE_PIN V16 [get_ports {Switches[1]}]
set_property PACKAGE_PIN W16 [get_ports {Switches[2]}]
set_property PACKAGE_PIN W17 [get_ports {Switches[3]}]
set_property PACKAGE_PIN W15 [get_ports {Switches[4]}]
set_property PACKAGE_PIN V15 [get_ports {Switches[5]}]
set_property PACKAGE_PIN W14 [get_ports {Switches[6]}]
set_property PACKAGE_PIN W13 [get_ports {Switches[7]}]
set_property PACKAGE_PIN V2 [get_ports {Switches[8]}]
set_property PACKAGE_PIN T3 [get_ports {Switches[9]}]
set_property PACKAGE_PIN T2 [get_ports {Switches[10]}]
set_property PACKAGE_PIN R3 [get_ports {Switches[11]}]
set_property PACKAGE_PIN W2 [get_ports {Switches[12]}]

create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports Clk]

set_property PACKAGE_PIN U1 [get_ports {Switches[13]}]
set_property PACKAGE_PIN T1 [get_ports {Switches[14]}]
set_property PACKAGE_PIN R2 [get_ports {Switches[15]}]

set_property PACKAGE_PIN V4 [get_ports {AnBus[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports B_Button]
set_property PACKAGE_PIN U17 [get_ports B_Button]


set_property IOSTANDARD LVCMOS33 [get_ports {Led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[9]}]
set_property PACKAGE_PIN U16 [get_ports {Led[0]}]
set_property PACKAGE_PIN E19 [get_ports {Led[1]}]
set_property PACKAGE_PIN U19 [get_ports {Led[2]}]
set_property PACKAGE_PIN V19 [get_ports {Led[3]}]
set_property PACKAGE_PIN W18 [get_ports {Led[4]}]
set_property PACKAGE_PIN U15 [get_ports {Led[5]}]
set_property PACKAGE_PIN U14 [get_ports {Led[6]}]
set_property PACKAGE_PIN V14 [get_ports {Led[7]}]
set_property PACKAGE_PIN V13 [get_ports {Led[8]}]
set_property PACKAGE_PIN W3 [get_ports {Led[10]}]
set_property PACKAGE_PIN U3 [get_ports {Led[11]}]
set_property PACKAGE_PIN P3 [get_ports {Led[12]}]
set_property PACKAGE_PIN N3 [get_ports {Led[13]}]
set_property PACKAGE_PIN P1 [get_ports {Led[14]}]
set_property PACKAGE_PIN V3 [get_ports {Led[9]}]
set_property PACKAGE_PIN L1 [get_ports {Led[15]}]
