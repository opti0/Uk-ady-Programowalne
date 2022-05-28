----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2022 10:26:08
-- Design Name: 
-- Module Name: SUM4B - Behavioral
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

entity SUM4B is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           y : out std_logic_vector (3 downto 0);
           cout : out STD_LOGIC);
end SUM4B;

architecture Behavioral of SUM4B is
component SUM1B is
    Port ( cin : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC;
           cout : out std_logic);
end component;
signal n : std_logic_vector (2 downto 0);
begin
s0: SUM1B port map (a => a(0), b => b(0), cin => cin, cout => n(0), y => y(0));
s1: SUM1B port map (a => a(1), b => b(1), cin => n(0), cout => n(1), y => y(1));
s2: SUM1B port map (a => a(2), b => b(2), cin => n(1), cout => n(2), y => y(2));
s3: SUM1B port map (a => a(3), b => b(3), cin => n(2), cout => cout, y => y(3));

end Behavioral;
