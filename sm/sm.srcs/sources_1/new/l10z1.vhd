----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2022 10:10:36
-- Design Name: 
-- Module Name: l10z1 - Behavioral
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

entity l10z1 is
    Port ( I : in STD_LOGIC;
           O : out STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC);
end l10z1;

architecture Behavioral of l10z1 is

type state_t is (q0, q1, q2, q3, q4);
signal state: state_t;
begin
process (CLK)
begin
 if rising_edge(CLK) then
            if RST = '1' then
                state <= q0;
                O <= '0';
            else
                case state is
                    when q0 =>
                        if I = '0' then
                            state <= q0;
                        else
                            state <= q1;
                        end if;
                        O <= '0';
                    when q1 =>
                        if I = '0' then
                            state <= q2;
                        else
                            state <= q1;
                        end if;
                        O <= '0';
                    
                    when q2 =>
                        if I = '0' then
                            state <= q0;
                        else
                            state <= q3;
                        end if;
                        O <= '0';  
                        
                    
                    when q3 =>
                        if I = '0' then
                            state <= q4;
                        else
                            state <= q1;
                        end if;
                        O <= '0';  
                                        
                    when q4 =>
                        if I = '0' then
                            state <= q0;
                        else
                            state <= q3;
                        end if;
                        O <= '1';  
    
                    
                    -- Wariant, który warto umieœciæ dla bezpieczeñstwa.
                    -- W przypadku gdyby maszyna przesz³a do nieprzewidzianego
                    -- stanu, np. w wyniku zak³ócenia, to po jednym cyklu
                    -- zegarowym przejdzie do stanu pocz¹tkowego, zachowa siê
                    -- jak po resecie
                    when others =>
                        state <= q0;
                        O <= '0';
                end case;
            
            end if;
        end if;
        
    
    end process;
end Behavioral;
