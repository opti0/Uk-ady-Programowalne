----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.04.2022 21:34:02
-- Design Name: 
-- Module Name: MUL4X4 - Behavioral
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

entity MUL4X4 is
    Port ( A : in STD_LOGIC_vector (3 downto 0);
           B : in STD_LOGIC_vector (3 downto 0);
           Y : out STD_LOGIC_vector (7 downto 0));
end MUL4X4;

architecture Behavioral of MUL4X4 is

signal s0: std_logic_vector (7 downto 0);
signal s1: std_logic_vector (7 downto 0);
signal m3: std_logic_vector (7 downto 0);
signal m2: std_logic_vector (7 downto 0);
signal m1: std_logic_vector (7 downto 0);
signal m0: std_logic_vector (7 downto 0);


component SUMNB is
generic (N: natural := 8);

    Port (  a : in std_logic_vector (N-1 downto 0);
            b : in std_logic_vector (N-1 downto 0);
            y : out std_logic_vector (N-1 downto 0);
            cin : in std_logic;
            cout : out std_logic );
end component;

begin

m0 <= "0000" & (A(3) and B(0)) & (A(2) and B(0)) & (A(1) and B(0)) & (A(0) and B(0));
m1 <= "000" & (A(3) and B(1)) & (A(2) and B(1)) & (A(1) and B(1)) & (A(0) and B(1)) & '0';
m2 <= "00" & (A(3) and B(2)) & (A(2) and B(2)) & (A(1) and B(2)) & (A(0) and B(2)) & "00";
m3 <= '0' & (A(3) and B(3)) & (A(2) and B(3)) & (A(1) and B(3)) & (A(0) and B(3)) & "000";

sum0: SUMNB port map (a => m0, b => m1, cin => '0', y => s0);
sum1: SUMNB port map (a => s0, b => m2, cin => '0', y => s1);
sum2: SUMNB port map (a => s1, b => m3, cin => '0', y => Y);

end Behavioral;