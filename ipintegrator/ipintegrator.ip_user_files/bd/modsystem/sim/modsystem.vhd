--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Fri Jun  3 17:58:57 2022
--Host        : DESKTOP-L2NDSED running 64-bit major release  (build 9200)
--Command     : generate_target modsystem.bd
--Design      : modsystem
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity modsystem is
  port (
    CLK : in STD_LOGIC;
    DIN : in STD_LOGIC;
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RESET : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of modsystem : entity is "modsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=modsystem,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of modsystem : entity is "modsystem.hwdef";
end modsystem;

architecture STRUCTURE of modsystem is
  component modsystem_xbip_dsp48_macro_0_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component modsystem_xbip_dsp48_macro_0_0;
  component modsystem_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component modsystem_xlslice_0_0;
  component modsystem_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component modsystem_c_counter_binary_0_0;
  component modsystem_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component modsystem_xlslice_1_0;
  component modsystem_modulator_0_0 is
  port (
    RESET : in STD_LOGIC;
    CLK : in STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component modsystem_modulator_0_0;
  signal CLK_1 : STD_LOGIC;
  signal DIN_1 : STD_LOGIC;
  signal RESET_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal modulator_0_O : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbip_dsp48_macro_0_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN modsystem_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  CLK_1 <= CLK;
  DIN_1 <= DIN;
  DOUT(7 downto 0) <= xlslice_0_Dout(7 downto 0);
  RESET_1 <= RESET;
c_counter_binary_0: component modsystem_c_counter_binary_0_0
     port map (
      CLK => CLK_1,
      Q(3 downto 0) => c_counter_binary_0_Q(3 downto 0)
    );
modulator_0: component modsystem_modulator_0_0
     port map (
      CLK => xlslice_1_Dout(0),
      O(7 downto 0) => modulator_0_O(7 downto 0),
      RESET => RESET_1
    );
xbip_dsp48_macro_0: component modsystem_xbip_dsp48_macro_0_0
     port map (
      A(7 downto 0) => modulator_0_O(7 downto 0),
      B(7) => DIN_1,
      B(6) => DIN_1,
      B(5) => DIN_1,
      B(4) => DIN_1,
      B(3) => DIN_1,
      B(2) => DIN_1,
      B(1) => DIN_1,
      B(0) => DIN_1,
      CLK => CLK_1,
      P(15 downto 0) => xbip_dsp48_macro_0_P(15 downto 0)
    );
xlslice_0: component modsystem_xlslice_0_0
     port map (
      Din(15 downto 0) => xbip_dsp48_macro_0_P(15 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
xlslice_1: component modsystem_xlslice_1_0
     port map (
      Din(3 downto 0) => c_counter_binary_0_Q(3 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
end STRUCTURE;
