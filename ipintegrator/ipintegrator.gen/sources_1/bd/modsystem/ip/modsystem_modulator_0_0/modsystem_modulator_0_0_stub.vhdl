-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Jun  3 17:59:44 2022
-- Host        : DESKTOP-L2NDSED running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Maciek/Documents/uklady_programowalne/ipintegrator/ipintegrator.gen/sources_1/bd/modsystem/ip/modsystem_modulator_0_0/modsystem_modulator_0_0_stub.vhdl
-- Design      : modsystem_modulator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modsystem_modulator_0_0 is
  Port ( 
    RESET : in STD_LOGIC;
    CLK : in STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end modsystem_modulator_0_0;

architecture stub of modsystem_modulator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RESET,CLK,O[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "modulator,Vivado 2020.2";
begin
end;
