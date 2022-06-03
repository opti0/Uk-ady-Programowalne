// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun  3 17:53:44 2022
// Host        : DESKTOP-L2NDSED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Maciek/Documents/uklady_programowalne/ipintegrator/ipintegrator.gen/sources_1/bd/modsystem/ip/modsystem_xbip_dsp48_macro_0_0/modsystem_xbip_dsp48_macro_0_0_stub.v
// Design      : modsystem_xbip_dsp48_macro_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_18,Vivado 2020.2" *)
module modsystem_xbip_dsp48_macro_0_0(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[7:0],B[7:0],P[15:0]" */;
  input CLK;
  input [7:0]A;
  input [7:0]B;
  output [15:0]P;
endmodule
