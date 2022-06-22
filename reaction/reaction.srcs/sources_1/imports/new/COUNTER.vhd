----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2022 10:13:16
-- Design Name: 
-- Module Name: COUNTER - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity COUNTER is
Port(
clk: in std_logic;
led: out std_logic;
btnC : in STD_LOGIC;
btnD: in std_logic;
seg : out STD_LOGIC_VECTOR (7 downto 0);
an : out STD_LOGIC_VECTOR (3 downto 0));
end COUNTER;

architecture Behavioral of COUNTER is

--component declaration

component FREQ_DEV is
  Port ( CLK : in STD_LOGIC;
         CLKD : out STD_LOGIC);
end component;

component STATE_MACHINE is
 Port (
 clk: in std_logic;
 btn: in std_logic;
 RESET: in std_logic;
 LED: out std_logic;
 CEN: out std_logic;
 CRST: out std_logic );
 end component;

component BCDCNT is
Port ( EN : in STD_LOGIC;
       CLK : in STD_LOGIC;
       RESET : in STD_LOGIC;
       CO : out STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component STEROWNIK_WYSWIETLACZ
 Port ( D0 : in STD_LOGIC_VECTOR (3 downto 0);
           D1 : in STD_LOGIC_VECTOR (3 downto 0);
           D2 : in STD_LOGIC_VECTOR (3 downto 0);
           D3 : in STD_LOGIC_VECTOR (3 downto 0);
           DP : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           SEG : out STD_LOGIC_VECTOR (7 downto 0);
           AN : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--signal declaration

signal CLKD: std_logic;
signal C0: std_logic;
signal C1: std_logic;
signal C2: std_logic;
signal D0 : STD_LOGIC_VECTOR (3 downto 0);
signal D1 : STD_LOGIC_VECTOR (3 downto 0);
signal D2 : STD_LOGIC_VECTOR (3 downto 0);
signal D3 : STD_LOGIC_VECTOR (3 downto 0);
signal DP : STD_LOGIC_VECTOR (3 downto 0);
signal RX : std_logic;
signal CEN : std_logic;

begin
f0: FREQ_DEV port map (clk => CLK, CLKD => CLKD);
sm0: STATE_MACHINE port map (RESET => btnC, CRST => RX, btn => btnD, CEN => CEN, led => led, clk => CLKD);
b0: BCDCNT port map (EN => CEN, CLK => CLKD, RESET => RX , Q => D0, CO => C0);
b1: BCDCNT port map (EN => CEN, CLK => C0, RESET => RX , Q => D1, CO => C1);
b2: BCDCNT port map (EN => CEN, CLK => C1, RESET => RX , Q => D2, CO => C2);
b3: BCDCNT port map (EN => CEN, CLK => C2, RESET => RX , Q => D3);
s0: STEROWNIK_WYSWIETLACZ port map (SEG => SEG, AN => AN , D0 => D0, D1 => D1, D2 => D2, D3 => D3, DP => "1000", EN => '1', CLK => CLKD, RESET => btnC);


end Behavioral;
