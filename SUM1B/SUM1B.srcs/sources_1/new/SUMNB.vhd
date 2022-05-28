----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2022 09:45:03
-- Design Name: 
-- Module Name: SUMNB - Behavioral
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

entity SUMNB is
    generic (N: natural := 8);
    Port ( a : in std_logic_vector (N-1 downto 0);
            b : in std_logic_vector (N-1 downto 0);
            y : out std_logic_vector (N-1 downto 0);
            cin : in std_logic;
            cout : out std_logic );
end SUMNB;

architecture Behavioral of SUMNB is
component SUM1B is
    Port ( cin : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC;
           cout : out std_logic);
end component;
signal c: std_logic_vector (N-2 downto 0);
begin
g: for i in 0 to N-1 generate
    i0: if i=0 generate
        s0: SUM1B port map (a => a(i), b => b(i), cin => cin, cout => c(i), y => y(i));
    end generate i0;
    
    ina: if i>0 and i<N-1 generate
        s0: SUM1B port map (a => a(i), b => b(i), cin => c(i-1), cout => c(i), y => y(i));
    end generate ina;
    
    inl: if i=N-1 generate
        s0: SUM1B port map (a => a(i), b => b(i), cin => c(i-1), cout => cout, y => y(i));
    end generate inl;
end generate g;


end Behavioral;
