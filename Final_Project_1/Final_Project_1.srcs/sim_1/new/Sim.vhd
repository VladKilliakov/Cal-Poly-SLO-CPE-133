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
    component Fourier_Func_Gen 
    Port ( Clk : in STD_LOGIC;
           Switches : in STD_LOGIC_VECTOR (15 downto 0);
           L_Button : in STD_LOGIC;
           R_Button : in STD_LOGIC;
           Push, Reset : in STD_LOGIC;
           CaBus : out STD_LOGIC_VECTOR (7 downto 0);
           AnBus : out STD_LOGIC_VECTOR (3 downto 0);
           Dac_Out : out STD_LOGIC);
    end component;
    
    signal S_Clk: std_logic := '1';
    signal S_L_Button, S_R_Button, S_Push, S_Reset, S_Dac_Out : std_logic;
    signal S_CaBus : std_logic_vector (7 downto 0);
    signal S_AnBus : std_logic_vector(3 downto 0);
    signal S_Switches : std_logic_vector (15 downto 0);

begin

    UUT: Fourier_Func_Gen port map (Clk => S_Clk,
                                    L_Button => S_L_Button,
                                    R_Button => S_R_Button,
                                    Push => S_Push,
                                    Reset => S_Reset,
                                    Dac_Out => S_Dac_Out,
                                    CaBus => S_CaBus,
                                    Switches => S_Switches,
                                    AnBus => S_AnBus);
    
    process begin
        
        S_Clk <= not S_Clk;
        wait for 10 ns;
        
    end process;
    s_switches <= x"0000";
    process begin
        
        S_L_Button <= '0';
        wait for 100000 ns;
        
        S_L_Button <= '1';
        
        wait for 100000 ns;
        
        S_L_Button <= '0';
        
--        wait;
        
    end process;
    
end Behavioral;
