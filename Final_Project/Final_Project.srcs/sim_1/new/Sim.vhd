----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2016 11:14:56 AM
-- Design Name: 
-- Module Name: Sim - Behavioral
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

entity Sim is
--  Port ( );
end Sim;

architecture Behavioral of Sim is
    component Sigma_Delta 
        port( Clk : in std_logic;
              Modu_in : in std_logic_vector(15 downto 0);
              Modu_out : out std_logic);
    end component;
    
    signal S_Clk: std_logic := '1';
    signal S_Modu_out : std_logic;
    signal S_Modu_in : std_logic_vector(15 downto 0);

begin

    UUT: Sigma_Delta port map (Clk => S_Clk,
                               Modu_out => S_Modu_out,
                               Modu_in => S_Modu_in);
    
    process begin
        
        S_Clk <= not S_Clk;
        wait for 10 ns;
        
    end process;
    
    process begin
        
        S_Modu_in <= "0000000000000000";
        
        wait for 10 ns;
        
        S_Modu_in <= "1000000010000101";
        
        wait for 10000 ns;
        
        S_Modu_in <= "0000100001000100";
        
        wait;
        
    end process;
    
end Behavioral;
