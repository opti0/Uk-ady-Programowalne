----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2022 21:57:47
-- Design Name: 
-- Module Name: test - Behavioral
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

entity test is
   
end test;

architecture Behavioral of test is
component BINTO7SEG is
 Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           DP : in STD_LOGIC;
           SEG : out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal x: std_logic_vector(3 downto 0) := (others => '0');
signal SEG: std_logic_vector(7 downto 0);
signal EN : std_logic := '0';
signal DP : std_logic := '0';
begin
b0: BINTO7SEG port map (x => x, EN => EN, DP => DP, SEG => SEG);
process
begin

wait for 50ns;
DP<= '1'; -- sprawdzenie czy zapali siê dla EN = 0

wait for 50ns;
x<=x"5"; -- 5

wait for 50ns;
x<=x"B"; -- b
wait for 50ns;
DP <= '1';

wait for 50ns;
EN<= '0'; -- wy³¹czenie wyœwietlacza

wait for 50ns;
EN<= '1'; -- w³¹czenie wyœwietlacza
x<=x"F"; -- f

wait for 50ns;
end process;

end Behavioral;
