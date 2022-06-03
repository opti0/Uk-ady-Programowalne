--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Fri Jun  3 17:58:57 2022
--Host        : DESKTOP-L2NDSED running 64-bit major release  (build 9200)
--Command     : generate_target modsystem_wrapper.bd
--Design      : modsystem_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity modsystem_wrapper is
  port (
    CLK : in STD_LOGIC;
    DIN : in STD_LOGIC;
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RESET : in STD_LOGIC
  );
end modsystem_wrapper;

architecture STRUCTURE of modsystem_wrapper is
  component modsystem is
  port (
    DIN : in STD_LOGIC;
    RESET : in STD_LOGIC;
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  end component modsystem;
begin
modsystem_i: component modsystem
     port map (
      CLK => CLK,
      DIN => DIN,
      DOUT(7 downto 0) => DOUT(7 downto 0),
      RESET => RESET
    );
end STRUCTURE;
