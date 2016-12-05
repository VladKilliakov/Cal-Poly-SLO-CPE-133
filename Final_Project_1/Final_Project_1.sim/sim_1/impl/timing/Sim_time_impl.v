// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Mon Dec 05 12:03:15 2016
// Host        : RM132B15 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/nmah/Documents/GitHub/Cal-Poly-SLO-CPE-133/Final_Project_1/Final_Project_1.sim/sim_1/impl/timing/Sim_time_impl.v
// Design      : Fourier_Func_Gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Clk_Divider
   (Toggle,
    Clk_IBUF_BUFG);
  output Toggle;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire Toggle;
  wire Toggle_i_1__0_n_0;
  wire \counter[0]_i_12_n_0 ;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[0]_i_3__0_n_0 ;
  wire \counter[0]_i_4__0_n_0 ;
  wire \counter[0]_i_5__0_n_0 ;
  wire \counter[0]_i_6__0_n_0 ;
  wire \counter[0]_i_7__0_n_0 ;
  wire \counter[0]_i_8__0_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_13__0_n_0 ;
  wire \counter_reg[0]_i_13__0_n_4 ;
  wire \counter_reg[0]_i_13__0_n_5 ;
  wire \counter_reg[0]_i_13__0_n_6 ;
  wire \counter_reg[0]_i_13__0_n_7 ;
  wire \counter_reg[0]_i_14__0_n_0 ;
  wire \counter_reg[0]_i_14__0_n_4 ;
  wire \counter_reg[0]_i_14__0_n_5 ;
  wire \counter_reg[0]_i_14__0_n_6 ;
  wire \counter_reg[0]_i_14__0_n_7 ;
  wire \counter_reg[0]_i_15__0_n_0 ;
  wire \counter_reg[0]_i_15__0_n_4 ;
  wire \counter_reg[0]_i_15__0_n_5 ;
  wire \counter_reg[0]_i_15__0_n_6 ;
  wire \counter_reg[0]_i_15__0_n_7 ;
  wire \counter_reg[0]_i_16__0_n_0 ;
  wire \counter_reg[0]_i_16__0_n_4 ;
  wire \counter_reg[0]_i_16__0_n_5 ;
  wire \counter_reg[0]_i_16__0_n_6 ;
  wire \counter_reg[0]_i_16__0_n_7 ;
  wire \counter_reg[0]_i_17__0_n_0 ;
  wire \counter_reg[0]_i_17__0_n_4 ;
  wire \counter_reg[0]_i_17__0_n_5 ;
  wire \counter_reg[0]_i_17__0_n_6 ;
  wire \counter_reg[0]_i_17__0_n_7 ;
  wire \counter_reg[0]_i_18__0_n_0 ;
  wire \counter_reg[0]_i_18__0_n_4 ;
  wire \counter_reg[0]_i_18__0_n_5 ;
  wire \counter_reg[0]_i_18__0_n_6 ;
  wire \counter_reg[0]_i_18__0_n_7 ;
  wire \counter_reg[0]_i_19__0_n_0 ;
  wire \counter_reg[0]_i_19__0_n_4 ;
  wire \counter_reg[0]_i_19__0_n_5 ;
  wire \counter_reg[0]_i_19__0_n_6 ;
  wire \counter_reg[0]_i_19__0_n_7 ;
  wire \counter_reg[0]_i_20__0_n_5 ;
  wire \counter_reg[0]_i_20__0_n_6 ;
  wire \counter_reg[0]_i_20__0_n_7 ;
  wire \counter_reg[0]_i_2__0_n_0 ;
  wire \counter_reg[0]_i_2__0_n_4 ;
  wire \counter_reg[0]_i_2__0_n_5 ;
  wire \counter_reg[0]_i_2__0_n_6 ;
  wire \counter_reg[0]_i_2__0_n_7 ;
  wire \counter_reg[12]_i_1__0_n_0 ;
  wire \counter_reg[12]_i_1__0_n_4 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[16]_i_1__0_n_0 ;
  wire \counter_reg[16]_i_1__0_n_4 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[20]_i_1__0_n_0 ;
  wire \counter_reg[20]_i_1__0_n_4 ;
  wire \counter_reg[20]_i_1__0_n_5 ;
  wire \counter_reg[20]_i_1__0_n_6 ;
  wire \counter_reg[20]_i_1__0_n_7 ;
  wire \counter_reg[24]_i_1__0_n_0 ;
  wire \counter_reg[24]_i_1__0_n_4 ;
  wire \counter_reg[24]_i_1__0_n_5 ;
  wire \counter_reg[24]_i_1__0_n_6 ;
  wire \counter_reg[24]_i_1__0_n_7 ;
  wire \counter_reg[28]_i_1__0_n_4 ;
  wire \counter_reg[28]_i_1__0_n_5 ;
  wire \counter_reg[28]_i_1__0_n_6 ;
  wire \counter_reg[28]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire [2:0]\NLW_counter_reg[0]_i_13__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_14__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_15__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_16__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_17__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_18__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_19__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[0]_i_20__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[0]_i_20__0_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    Toggle_i_1__0
       (.I0(\counter[0]_i_1__0_n_0 ),
        .I1(Toggle),
        .O(Toggle_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Toggle_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Toggle_i_1__0_n_0),
        .Q(Toggle),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_12 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[0]_i_1__0 
       (.I0(\counter[0]_i_3__0_n_0 ),
        .I1(\counter[0]_i_4__0_n_0 ),
        .I2(\counter[0]_i_5__0_n_0 ),
        .I3(\counter[0]_i_6__0_n_0 ),
        .I4(\counter[0]_i_7__0_n_0 ),
        .I5(\counter[0]_i_8__0_n_0 ),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3__0 
       (.I0(\counter_reg[0]_i_13__0_n_7 ),
        .I1(\counter_reg[0]_i_13__0_n_6 ),
        .O(\counter[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \counter[0]_i_4__0 
       (.I0(\counter_reg[0]_i_14__0_n_7 ),
        .I1(\counter_reg[0]_i_14__0_n_6 ),
        .I2(\counter_reg[0]_i_13__0_n_5 ),
        .I3(\counter_reg[0]_i_13__0_n_4 ),
        .I4(\counter_reg[0]_i_14__0_n_4 ),
        .I5(\counter_reg[0]_i_14__0_n_5 ),
        .O(\counter[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_5__0 
       (.I0(\counter_reg[0]_i_15__0_n_5 ),
        .I1(\counter_reg[0]_i_15__0_n_4 ),
        .I2(\counter_reg[0]_i_15__0_n_7 ),
        .I3(\counter_reg[0]_i_15__0_n_6 ),
        .I4(\counter_reg[0]_i_16__0_n_6 ),
        .I5(\counter_reg[0]_i_16__0_n_7 ),
        .O(\counter[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_6__0 
       (.I0(\counter_reg[0]_i_17__0_n_7 ),
        .I1(\counter_reg[0]_i_17__0_n_6 ),
        .I2(\counter_reg[0]_i_16__0_n_5 ),
        .I3(\counter_reg[0]_i_16__0_n_4 ),
        .I4(\counter_reg[0]_i_17__0_n_4 ),
        .I5(\counter_reg[0]_i_17__0_n_5 ),
        .O(\counter[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_7__0 
       (.I0(\counter_reg[0]_i_18__0_n_5 ),
        .I1(\counter_reg[0]_i_18__0_n_4 ),
        .I2(\counter_reg[0]_i_18__0_n_7 ),
        .I3(\counter_reg[0]_i_18__0_n_6 ),
        .I4(\counter_reg[0]_i_19__0_n_6 ),
        .I5(\counter_reg[0]_i_19__0_n_7 ),
        .O(\counter[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \counter[0]_i_8__0 
       (.I0(\counter_reg[0]_i_20__0_n_7 ),
        .I1(\counter_reg[0]_i_20__0_n_6 ),
        .I2(\counter_reg[0]_i_19__0_n_5 ),
        .I3(\counter_reg[0]_i_19__0_n_4 ),
        .I4(\counter_reg[0]_i_20__0_n_5 ),
        .I5(counter_reg[0]),
        .O(\counter[0]_i_8__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[0]_i_13__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_13__0_n_0 ,\NLW_counter_reg[0]_i_13__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_13__0_n_4 ,\counter_reg[0]_i_13__0_n_5 ,\counter_reg[0]_i_13__0_n_6 ,\counter_reg[0]_i_13__0_n_7 }),
        .S(counter_reg[4:1]));
  CARRY4 \counter_reg[0]_i_14__0 
       (.CI(\counter_reg[0]_i_13__0_n_0 ),
        .CO({\counter_reg[0]_i_14__0_n_0 ,\NLW_counter_reg[0]_i_14__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_14__0_n_4 ,\counter_reg[0]_i_14__0_n_5 ,\counter_reg[0]_i_14__0_n_6 ,\counter_reg[0]_i_14__0_n_7 }),
        .S(counter_reg[8:5]));
  CARRY4 \counter_reg[0]_i_15__0 
       (.CI(\counter_reg[0]_i_14__0_n_0 ),
        .CO({\counter_reg[0]_i_15__0_n_0 ,\NLW_counter_reg[0]_i_15__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_15__0_n_4 ,\counter_reg[0]_i_15__0_n_5 ,\counter_reg[0]_i_15__0_n_6 ,\counter_reg[0]_i_15__0_n_7 }),
        .S(counter_reg[12:9]));
  CARRY4 \counter_reg[0]_i_16__0 
       (.CI(\counter_reg[0]_i_15__0_n_0 ),
        .CO({\counter_reg[0]_i_16__0_n_0 ,\NLW_counter_reg[0]_i_16__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_16__0_n_4 ,\counter_reg[0]_i_16__0_n_5 ,\counter_reg[0]_i_16__0_n_6 ,\counter_reg[0]_i_16__0_n_7 }),
        .S(counter_reg[16:13]));
  CARRY4 \counter_reg[0]_i_17__0 
       (.CI(\counter_reg[0]_i_16__0_n_0 ),
        .CO({\counter_reg[0]_i_17__0_n_0 ,\NLW_counter_reg[0]_i_17__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_17__0_n_4 ,\counter_reg[0]_i_17__0_n_5 ,\counter_reg[0]_i_17__0_n_6 ,\counter_reg[0]_i_17__0_n_7 }),
        .S(counter_reg[20:17]));
  CARRY4 \counter_reg[0]_i_18__0 
       (.CI(\counter_reg[0]_i_17__0_n_0 ),
        .CO({\counter_reg[0]_i_18__0_n_0 ,\NLW_counter_reg[0]_i_18__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_18__0_n_4 ,\counter_reg[0]_i_18__0_n_5 ,\counter_reg[0]_i_18__0_n_6 ,\counter_reg[0]_i_18__0_n_7 }),
        .S(counter_reg[24:21]));
  CARRY4 \counter_reg[0]_i_19__0 
       (.CI(\counter_reg[0]_i_18__0_n_0 ),
        .CO({\counter_reg[0]_i_19__0_n_0 ,\NLW_counter_reg[0]_i_19__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_19__0_n_4 ,\counter_reg[0]_i_19__0_n_5 ,\counter_reg[0]_i_19__0_n_6 ,\counter_reg[0]_i_19__0_n_7 }),
        .S(counter_reg[28:25]));
  CARRY4 \counter_reg[0]_i_20__0 
       (.CI(\counter_reg[0]_i_19__0_n_0 ),
        .CO(\NLW_counter_reg[0]_i_20__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[0]_i_20__0_O_UNCONNECTED [3],\counter_reg[0]_i_20__0_n_5 ,\counter_reg[0]_i_20__0_n_6 ,\counter_reg[0]_i_20__0_n_7 }),
        .S({1'b0,counter_reg[31:29]}));
  CARRY4 \counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2__0_n_0 ,\NLW_counter_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2__0_n_4 ,\counter_reg[0]_i_2__0_n_5 ,\counter_reg[0]_i_2__0_n_6 ,\counter_reg[0]_i_2__0_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\counter_reg[12]_i_1__0_n_0 ,\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__0_n_4 ,\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[12]_i_1__0_n_0 ),
        .CO({\counter_reg[16]_i_1__0_n_0 ,\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__0_n_4 ,\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[20]_i_1__0 
       (.CI(\counter_reg[16]_i_1__0_n_0 ),
        .CO({\counter_reg[20]_i_1__0_n_0 ,\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1__0_n_4 ,\counter_reg[20]_i_1__0_n_5 ,\counter_reg[20]_i_1__0_n_6 ,\counter_reg[20]_i_1__0_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[24]_i_1__0 
       (.CI(\counter_reg[20]_i_1__0_n_0 ),
        .CO({\counter_reg[24]_i_1__0_n_0 ,\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__0_n_4 ,\counter_reg[24]_i_1__0_n_5 ,\counter_reg[24]_i_1__0_n_6 ,\counter_reg[24]_i_1__0_n_7 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_4 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_7 ),
        .Q(counter_reg[28]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[28]_i_1__0 
       (.CI(\counter_reg[24]_i_1__0_n_0 ),
        .CO(\NLW_counter_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1__0_n_4 ,\counter_reg[28]_i_1__0_n_5 ,\counter_reg[28]_i_1__0_n_6 ,\counter_reg[28]_i_1__0_n_7 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_6 ),
        .Q(counter_reg[29]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_5 ),
        .Q(counter_reg[30]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_4 ),
        .Q(counter_reg[31]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_2__0_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "Clk_Divider" *) 
module Clk_Divider_0
   (CLK,
    Clk_IBUF_BUFG);
  output CLK;
  input Clk_IBUF_BUFG;

  wire CLK;
  wire Clk_IBUF_BUFG;
  wire Toggle_i_1_n_0;
  wire clear;
  wire \counter[0]_i_12__0_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_13_n_0 ;
  wire \counter_reg[0]_i_13_n_4 ;
  wire \counter_reg[0]_i_13_n_5 ;
  wire \counter_reg[0]_i_13_n_6 ;
  wire \counter_reg[0]_i_13_n_7 ;
  wire \counter_reg[0]_i_14_n_0 ;
  wire \counter_reg[0]_i_14_n_4 ;
  wire \counter_reg[0]_i_14_n_5 ;
  wire \counter_reg[0]_i_14_n_6 ;
  wire \counter_reg[0]_i_14_n_7 ;
  wire \counter_reg[0]_i_15_n_0 ;
  wire \counter_reg[0]_i_15_n_4 ;
  wire \counter_reg[0]_i_15_n_5 ;
  wire \counter_reg[0]_i_15_n_6 ;
  wire \counter_reg[0]_i_15_n_7 ;
  wire \counter_reg[0]_i_16_n_0 ;
  wire \counter_reg[0]_i_16_n_4 ;
  wire \counter_reg[0]_i_16_n_5 ;
  wire \counter_reg[0]_i_16_n_6 ;
  wire \counter_reg[0]_i_16_n_7 ;
  wire \counter_reg[0]_i_17_n_0 ;
  wire \counter_reg[0]_i_17_n_4 ;
  wire \counter_reg[0]_i_17_n_5 ;
  wire \counter_reg[0]_i_17_n_6 ;
  wire \counter_reg[0]_i_17_n_7 ;
  wire \counter_reg[0]_i_18_n_0 ;
  wire \counter_reg[0]_i_18_n_4 ;
  wire \counter_reg[0]_i_18_n_5 ;
  wire \counter_reg[0]_i_18_n_6 ;
  wire \counter_reg[0]_i_18_n_7 ;
  wire \counter_reg[0]_i_19_n_0 ;
  wire \counter_reg[0]_i_19_n_4 ;
  wire \counter_reg[0]_i_19_n_5 ;
  wire \counter_reg[0]_i_19_n_6 ;
  wire \counter_reg[0]_i_19_n_7 ;
  wire \counter_reg[0]_i_20_n_5 ;
  wire \counter_reg[0]_i_20_n_6 ;
  wire \counter_reg[0]_i_20_n_7 ;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [2:0]\NLW_counter_reg[0]_i_13_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_15_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_16_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_17_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_19_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[0]_i_20_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[0]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    Toggle_i_1
       (.I0(clear),
        .I1(CLK),
        .O(Toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Toggle_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Toggle_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_5_n_0 ),
        .I3(\counter[0]_i_6_n_0 ),
        .I4(\counter[0]_i_7_n_0 ),
        .I5(\counter[0]_i_8_n_0 ),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_12__0 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_12__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(\counter_reg[0]_i_13_n_7 ),
        .I1(\counter_reg[0]_i_13_n_6 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \counter[0]_i_4 
       (.I0(\counter_reg[0]_i_14_n_7 ),
        .I1(\counter_reg[0]_i_14_n_6 ),
        .I2(\counter_reg[0]_i_13_n_5 ),
        .I3(\counter_reg[0]_i_13_n_4 ),
        .I4(\counter_reg[0]_i_14_n_4 ),
        .I5(\counter_reg[0]_i_14_n_5 ),
        .O(\counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_5 
       (.I0(\counter_reg[0]_i_15_n_5 ),
        .I1(\counter_reg[0]_i_15_n_4 ),
        .I2(\counter_reg[0]_i_15_n_7 ),
        .I3(\counter_reg[0]_i_15_n_6 ),
        .I4(\counter_reg[0]_i_16_n_6 ),
        .I5(\counter_reg[0]_i_16_n_7 ),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_6 
       (.I0(\counter_reg[0]_i_17_n_7 ),
        .I1(\counter_reg[0]_i_17_n_6 ),
        .I2(\counter_reg[0]_i_16_n_5 ),
        .I3(\counter_reg[0]_i_16_n_4 ),
        .I4(\counter_reg[0]_i_17_n_4 ),
        .I5(\counter_reg[0]_i_17_n_5 ),
        .O(\counter[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_7 
       (.I0(\counter_reg[0]_i_18_n_5 ),
        .I1(\counter_reg[0]_i_18_n_4 ),
        .I2(\counter_reg[0]_i_18_n_7 ),
        .I3(\counter_reg[0]_i_18_n_6 ),
        .I4(\counter_reg[0]_i_19_n_6 ),
        .I5(\counter_reg[0]_i_19_n_7 ),
        .O(\counter[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \counter[0]_i_8 
       (.I0(\counter_reg[0]_i_20_n_7 ),
        .I1(\counter_reg[0]_i_20_n_6 ),
        .I2(\counter_reg[0]_i_19_n_5 ),
        .I3(\counter_reg[0]_i_19_n_4 ),
        .I4(\counter_reg[0]_i_20_n_5 ),
        .I5(counter_reg[0]),
        .O(\counter[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(clear));
  CARRY4 \counter_reg[0]_i_13 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_13_n_0 ,\NLW_counter_reg[0]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_13_n_4 ,\counter_reg[0]_i_13_n_5 ,\counter_reg[0]_i_13_n_6 ,\counter_reg[0]_i_13_n_7 }),
        .S(counter_reg[4:1]));
  CARRY4 \counter_reg[0]_i_14 
       (.CI(\counter_reg[0]_i_13_n_0 ),
        .CO({\counter_reg[0]_i_14_n_0 ,\NLW_counter_reg[0]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_14_n_4 ,\counter_reg[0]_i_14_n_5 ,\counter_reg[0]_i_14_n_6 ,\counter_reg[0]_i_14_n_7 }),
        .S(counter_reg[8:5]));
  CARRY4 \counter_reg[0]_i_15 
       (.CI(\counter_reg[0]_i_14_n_0 ),
        .CO({\counter_reg[0]_i_15_n_0 ,\NLW_counter_reg[0]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_15_n_4 ,\counter_reg[0]_i_15_n_5 ,\counter_reg[0]_i_15_n_6 ,\counter_reg[0]_i_15_n_7 }),
        .S(counter_reg[12:9]));
  CARRY4 \counter_reg[0]_i_16 
       (.CI(\counter_reg[0]_i_15_n_0 ),
        .CO({\counter_reg[0]_i_16_n_0 ,\NLW_counter_reg[0]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_16_n_4 ,\counter_reg[0]_i_16_n_5 ,\counter_reg[0]_i_16_n_6 ,\counter_reg[0]_i_16_n_7 }),
        .S(counter_reg[16:13]));
  CARRY4 \counter_reg[0]_i_17 
       (.CI(\counter_reg[0]_i_16_n_0 ),
        .CO({\counter_reg[0]_i_17_n_0 ,\NLW_counter_reg[0]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_17_n_4 ,\counter_reg[0]_i_17_n_5 ,\counter_reg[0]_i_17_n_6 ,\counter_reg[0]_i_17_n_7 }),
        .S(counter_reg[20:17]));
  CARRY4 \counter_reg[0]_i_18 
       (.CI(\counter_reg[0]_i_17_n_0 ),
        .CO({\counter_reg[0]_i_18_n_0 ,\NLW_counter_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_18_n_4 ,\counter_reg[0]_i_18_n_5 ,\counter_reg[0]_i_18_n_6 ,\counter_reg[0]_i_18_n_7 }),
        .S(counter_reg[24:21]));
  CARRY4 \counter_reg[0]_i_19 
       (.CI(\counter_reg[0]_i_18_n_0 ),
        .CO({\counter_reg[0]_i_19_n_0 ,\NLW_counter_reg[0]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_19_n_4 ,\counter_reg[0]_i_19_n_5 ,\counter_reg[0]_i_19_n_6 ,\counter_reg[0]_i_19_n_7 }),
        .S(counter_reg[28:25]));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_12__0_n_0 }));
  CARRY4 \counter_reg[0]_i_20 
       (.CI(\counter_reg[0]_i_19_n_0 ),
        .CO(\NLW_counter_reg[0]_i_20_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[0]_i_20_O_UNCONNECTED [3],\counter_reg[0]_i_20_n_5 ,\counter_reg[0]_i_20_n_6 ,\counter_reg[0]_i_20_n_7 }),
        .S({1'b0,counter_reg[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(clear));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(clear));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO(\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
endmodule

(* ECO_CHECKSUM = "9395bea7" *) 
(* NotValidForBitStream *)
module Fourier_Func_Gen
   (Clk,
    Switches,
    L_Button,
    R_Button,
    Push,
    Reset,
    CaBus,
    AnBus,
    Dac_Out);
  input Clk;
  input [15:0]Switches;
  input L_Button;
  input R_Button;
  input Push;
  input Reset;
  output [7:0]CaBus;
  output [3:0]AnBus;
  output Dac_Out;

  wire [3:0]AnBus;
  wire [3:0]AnBus_OBUF;
  wire [7:0]CaBus;
  wire [7:1]CaBus_OBUF;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire Clk_Main;
  wire Dac_Out;
  wire L_Button;
  wire L_Button_IBUF;
  wire R_Button;
  wire R_Button_IBUF;
  wire Reset;
  wire Reset_IBUF;
  wire [2:0]State;
  wire [15:0]Switches;
  wire [11:0]Switches_IBUF;
  wire Toggle;

initial begin
 $sdf_annotate("Sim_time_impl.sdf",,,,"tool_control");
end
  OBUF \AnBus_OBUF[0]_inst 
       (.I(AnBus_OBUF[0]),
        .O(AnBus[0]));
  OBUF \AnBus_OBUF[1]_inst 
       (.I(AnBus_OBUF[1]),
        .O(AnBus[1]));
  OBUF \AnBus_OBUF[2]_inst 
       (.I(AnBus_OBUF[2]),
        .O(AnBus[2]));
  OBUF \AnBus_OBUF[3]_inst 
       (.I(AnBus_OBUF[3]),
        .O(AnBus[3]));
  OBUF \CaBus_OBUF[0]_inst 
       (.I(1'b1),
        .O(CaBus[0]));
  OBUF \CaBus_OBUF[1]_inst 
       (.I(CaBus_OBUF[1]),
        .O(CaBus[1]));
  OBUF \CaBus_OBUF[2]_inst 
       (.I(CaBus_OBUF[2]),
        .O(CaBus[2]));
  OBUF \CaBus_OBUF[3]_inst 
       (.I(CaBus_OBUF[3]),
        .O(CaBus[3]));
  OBUF \CaBus_OBUF[4]_inst 
       (.I(CaBus_OBUF[4]),
        .O(CaBus[4]));
  OBUF \CaBus_OBUF[5]_inst 
       (.I(CaBus_OBUF[5]),
        .O(CaBus[5]));
  OBUF \CaBus_OBUF[6]_inst 
       (.I(CaBus_OBUF[6]),
        .O(CaBus[6]));
  OBUF \CaBus_OBUF[7]_inst 
       (.I(CaBus_OBUF[7]),
        .O(CaBus[7]));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  OBUF Dac_Out_OBUF_inst
       (.I(1'b0),
        .O(Dac_Out));
  Clk_Divider Display_Clk_Gen
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Toggle(Toggle));
  Sev_Seg_Driver LCD_Driver
       (.AnBus_OBUF(AnBus_OBUF),
        .Q(CaBus_OBUF),
        .\State_reg[2] (State),
        .Switches_IBUF(Switches_IBUF),
        .Toggle(Toggle));
  IBUF L_Button_IBUF_inst
       (.I(L_Button),
        .O(L_Button_IBUF));
  Clk_Divider_0 Main_Clk_Gen
       (.CLK(Clk_Main),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG));
  IBUF R_Button_IBUF_inst
       (.I(R_Button),
        .O(R_Button_IBUF));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  Fourier_Register Store_Amplitude
       (.CLK(Clk_Main),
        .L_Button_IBUF(L_Button_IBUF),
        .Q(State),
        .R_Button_IBUF(R_Button_IBUF),
        .Reset_IBUF(Reset_IBUF));
  IBUF \Switches_IBUF[0]_inst 
       (.I(Switches[0]),
        .O(Switches_IBUF[0]));
  IBUF \Switches_IBUF[10]_inst 
       (.I(Switches[10]),
        .O(Switches_IBUF[10]));
  IBUF \Switches_IBUF[11]_inst 
       (.I(Switches[11]),
        .O(Switches_IBUF[11]));
  IBUF \Switches_IBUF[1]_inst 
       (.I(Switches[1]),
        .O(Switches_IBUF[1]));
  IBUF \Switches_IBUF[2]_inst 
       (.I(Switches[2]),
        .O(Switches_IBUF[2]));
  IBUF \Switches_IBUF[3]_inst 
       (.I(Switches[3]),
        .O(Switches_IBUF[3]));
  IBUF \Switches_IBUF[4]_inst 
       (.I(Switches[4]),
        .O(Switches_IBUF[4]));
  IBUF \Switches_IBUF[5]_inst 
       (.I(Switches[5]),
        .O(Switches_IBUF[5]));
  IBUF \Switches_IBUF[6]_inst 
       (.I(Switches[6]),
        .O(Switches_IBUF[6]));
  IBUF \Switches_IBUF[7]_inst 
       (.I(Switches[7]),
        .O(Switches_IBUF[7]));
  IBUF \Switches_IBUF[8]_inst 
       (.I(Switches[8]),
        .O(Switches_IBUF[8]));
  IBUF \Switches_IBUF[9]_inst 
       (.I(Switches[9]),
        .O(Switches_IBUF[9]));
endmodule

module Fourier_Register
   (Q,
    CLK,
    Reset_IBUF,
    R_Button_IBUF,
    L_Button_IBUF);
  output [2:0]Q;
  input CLK;
  input Reset_IBUF;
  input R_Button_IBUF;
  input L_Button_IBUF;

  wire CLK;
  wire \FSM_sequential_PS[0]_i_1_n_0 ;
  wire \FSM_sequential_PS[1]_i_1_n_0 ;
  wire \FSM_sequential_PS[2]_i_1_n_0 ;
  wire \FSM_sequential_PS[2]_i_2_n_0 ;
  wire L_Button_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]PS_reg;
  wire [2:0]Q;
  wire R_Button_IBUF;
  wire Reset_IBUF;

  LUT3 #(
    .INIT(8'h1E)) 
    \FSM_sequential_PS[0]_i_1 
       (.I0(R_Button_IBUF),
        .I1(L_Button_IBUF),
        .I2(PS_reg[0]),
        .O(\FSM_sequential_PS[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA758)) 
    \FSM_sequential_PS[1]_i_1 
       (.I0(PS_reg[0]),
        .I1(R_Button_IBUF),
        .I2(L_Button_IBUF),
        .I3(PS_reg[1]),
        .O(\FSM_sequential_PS[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBDFD4202)) 
    \FSM_sequential_PS[2]_i_1 
       (.I0(L_Button_IBUF),
        .I1(PS_reg[1]),
        .I2(PS_reg[0]),
        .I3(R_Button_IBUF),
        .I4(PS_reg[2]),
        .O(\FSM_sequential_PS[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_PS[2]_i_2 
       (.I0(Reset_IBUF),
        .O(\FSM_sequential_PS[2]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_PS[2]_i_2_n_0 ),
        .D(\FSM_sequential_PS[0]_i_1_n_0 ),
        .Q(PS_reg[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_PS[2]_i_2_n_0 ),
        .D(\FSM_sequential_PS[1]_i_1_n_0 ),
        .Q(PS_reg[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_PS[2]_i_2_n_0 ),
        .D(\FSM_sequential_PS[2]_i_1_n_0 ),
        .Q(PS_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \State_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(PS_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \State_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(PS_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \State_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(PS_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
endmodule

module Sev_Seg_Driver
   (AnBus_OBUF,
    Q,
    Toggle,
    \State_reg[2] ,
    Switches_IBUF);
  output [3:0]AnBus_OBUF;
  output [6:0]Q;
  input Toggle;
  input [2:0]\State_reg[2] ;
  input [11:0]Switches_IBUF;

  wire \AnBus[2]_i_1_n_0 ;
  wire [3:0]AnBus_OBUF;
  wire [3:0]Bbus;
  wire \Bbus_reg_n_0_[0] ;
  wire \Bbus_reg_n_0_[1] ;
  wire \Bbus_reg_n_0_[2] ;
  wire \Bbus_reg_n_0_[3] ;
  wire [6:0]Q;
  wire [2:0]\State_reg[2] ;
  wire [11:0]Switches_IBUF;
  wire Toggle;
  wire [1:0]digit;
  wire [7:1]p_0_in;
  wire [1:0]plusOp;

  LUT1 #(
    .INIT(2'h1)) 
    \AnBus[2]_i_1 
       (.I0(digit[1]),
        .O(\AnBus[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \AnBus_reg[0] 
       (.C(Toggle),
        .CE(1'b1),
        .D(digit[1]),
        .Q(AnBus_OBUF[0]),
        .S(digit[0]));
  FDSE #(
    .INIT(1'b1)) 
    \AnBus_reg[1] 
       (.C(Toggle),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(AnBus_OBUF[1]),
        .S(digit[1]));
  FDSE #(
    .INIT(1'b1)) 
    \AnBus_reg[2] 
       (.C(Toggle),
        .CE(1'b1),
        .D(\AnBus[2]_i_1_n_0 ),
        .Q(AnBus_OBUF[2]),
        .S(digit[0]));
  FDSE #(
    .INIT(1'b1)) 
    \AnBus_reg[3] 
       (.C(Toggle),
        .CE(1'b1),
        .D(\AnBus[2]_i_1_n_0 ),
        .Q(AnBus_OBUF[3]),
        .S(plusOp[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Bbus[0]_i_1 
       (.I0(\State_reg[2] [0]),
        .I1(Switches_IBUF[4]),
        .I2(digit[0]),
        .I3(Switches_IBUF[8]),
        .I4(digit[1]),
        .I5(Switches_IBUF[0]),
        .O(Bbus[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Bbus[1]_i_1 
       (.I0(\State_reg[2] [1]),
        .I1(Switches_IBUF[5]),
        .I2(digit[0]),
        .I3(Switches_IBUF[9]),
        .I4(digit[1]),
        .I5(Switches_IBUF[1]),
        .O(Bbus[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Bbus[2]_i_1 
       (.I0(\State_reg[2] [2]),
        .I1(Switches_IBUF[6]),
        .I2(digit[0]),
        .I3(Switches_IBUF[10]),
        .I4(digit[1]),
        .I5(Switches_IBUF[2]),
        .O(Bbus[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Bbus[3]_i_1 
       (.I0(Switches_IBUF[7]),
        .I1(digit[0]),
        .I2(Switches_IBUF[11]),
        .I3(digit[1]),
        .I4(Switches_IBUF[3]),
        .O(Bbus[3]));
  FDRE #(
    .INIT(1'b0)) 
    \Bbus_reg[0] 
       (.C(Toggle),
        .CE(1'b1),
        .D(Bbus[0]),
        .Q(\Bbus_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bbus_reg[1] 
       (.C(Toggle),
        .CE(1'b1),
        .D(Bbus[1]),
        .Q(\Bbus_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bbus_reg[2] 
       (.C(Toggle),
        .CE(1'b1),
        .D(Bbus[2]),
        .Q(\Bbus_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bbus_reg[3] 
       (.C(Toggle),
        .CE(1'b1),
        .D(Bbus[3]),
        .Q(\Bbus_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0285)) 
    \CaBus[1]_i_1 
       (.I0(\Bbus_reg_n_0_[2] ),
        .I1(\Bbus_reg_n_0_[0] ),
        .I2(\Bbus_reg_n_0_[1] ),
        .I3(\Bbus_reg_n_0_[3] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h408E)) 
    \CaBus[2]_i_1 
       (.I0(\Bbus_reg_n_0_[1] ),
        .I1(\Bbus_reg_n_0_[0] ),
        .I2(\Bbus_reg_n_0_[2] ),
        .I3(\Bbus_reg_n_0_[3] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \CaBus[3]_i_1 
       (.I0(\Bbus_reg_n_0_[3] ),
        .I1(\Bbus_reg_n_0_[0] ),
        .I2(\Bbus_reg_n_0_[2] ),
        .I3(\Bbus_reg_n_0_[1] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9924)) 
    \CaBus[4]_i_1 
       (.I0(\Bbus_reg_n_0_[1] ),
        .I1(\Bbus_reg_n_0_[2] ),
        .I2(\Bbus_reg_n_0_[3] ),
        .I3(\Bbus_reg_n_0_[0] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \CaBus[5]_i_1 
       (.I0(\Bbus_reg_n_0_[2] ),
        .I1(\Bbus_reg_n_0_[0] ),
        .I2(\Bbus_reg_n_0_[1] ),
        .I3(\Bbus_reg_n_0_[3] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \CaBus[6]_i_1 
       (.I0(\Bbus_reg_n_0_[0] ),
        .I1(\Bbus_reg_n_0_[2] ),
        .I2(\Bbus_reg_n_0_[1] ),
        .I3(\Bbus_reg_n_0_[3] ),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h2812)) 
    \CaBus[7]_i_1 
       (.I0(\Bbus_reg_n_0_[0] ),
        .I1(\Bbus_reg_n_0_[1] ),
        .I2(\Bbus_reg_n_0_[2] ),
        .I3(\Bbus_reg_n_0_[3] ),
        .O(p_0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \CaBus_reg[1] 
       (.C(Toggle),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CaBus_reg[2] 
       (.C(Toggle),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CaBus_reg[3] 
       (.C(Toggle),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CaBus_reg[4] 
       (.C(Toggle),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CaBus_reg[5] 
       (.C(Toggle),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CaBus_reg[6] 
       (.C(Toggle),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CaBus_reg[7] 
       (.C(Toggle),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(Q[6]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \digit[0]_i_1 
       (.I0(digit[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit[1]_i_1 
       (.I0(digit[0]),
        .I1(digit[1]),
        .O(plusOp[1]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[0] 
       (.C(Toggle),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(digit[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[1] 
       (.C(Toggle),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(digit[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
