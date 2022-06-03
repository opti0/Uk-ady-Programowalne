// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun  3 17:59:44 2022
// Host        : DESKTOP-L2NDSED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Maciek/Documents/uklady_programowalne/ipintegrator/ipintegrator.gen/sources_1/bd/modsystem/ip/modsystem_modulator_0_0/modsystem_modulator_0_0_stub.v
// Design      : modsystem_modulator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "modulator,Vivado 2020.2" *)
module modsystem_modulator_0_0(RESET, CLK, O)
/* synthesis syn_black_box black_box_pad_pin="RESET,CLK,O[7:0]" */;
  input RESET;
  input CLK;
  output [7:0]O;
endmodule
