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
-- arithmetic functions with unsigned or Unsigned values
use IEEE.NUMERIC_STD.ALL;

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
           Switches : in unsigned (15 downto 0);
           L_Button : in STD_LOGIC;
           R_Button : in STD_LOGIC;
           M_Button : in std_logic;
           B_Button : in std_logic;
           Reset : in STD_LOGIC;
           CaBus : out STD_LOGIC_VECTOR (7 downto 0);
           AnBus : out STD_LOGIC_VECTOR (3 downto 0);
           Dac_Out : out STD_LOGIC;
           LED : out std_logic_vector (15 downto 0));
    end component;
    
    signal S_Clk: std_logic := '1';
    signal S_L_Button, S_R_Button, S_M_Button, S_Reset, S_Dac_Out, S_B_Button: std_logic := '0';
    signal S_CaBus : std_logic_vector (7 downto 0);
    signal S_AnBus : std_logic_vector(3 downto 0);
    signal S_Switches: unsigned (15 downto 0);
    signal s_led : std_logic_vector(15 downto 0);

begin

    UUT: Fourier_Func_Gen port map (Clk => S_Clk,
                                    L_Button => S_L_Button,
                                    R_Button => S_R_Button,
                                    M_Button => S_M_Button,
                                    Reset => S_Reset,
                                    Dac_Out => S_Dac_Out,
                                    CaBus => S_CaBus,
                                    Switches => S_Switches,
                                    AnBus => S_AnBus,
                                    B_Button => S_B_Button,
                                    LEd => s_led);

    
    process begin
        
        S_Clk <= not S_Clk;
        wait for 10 ns;
        
    end process;


    process begin
        s_switches <= x"0001";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
        wait for 10000000 ns;
                s_switches <= x"0000";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
        wait for 10000000 ns;
                s_switches <= x"0000";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
                wait for 10000000 ns;
                s_switches <= x"0000";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
        wait for 10000000 ns;
                s_switches <= x"0000";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
        wait for 10000000 ns;
                s_switches <= x"0000";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
        wait for 10000000 ns;
                s_switches <= x"0000";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
        wait for 10000000 ns;
                s_switches <= x"0000";
        s_R_Button <= '0';
        s_m_Button <= '0';
        wait for 10000000 ns;
        s_m_Button <= '1';
        s_R_Button <= '1';
        wait for 10000000 ns;
        wait;
    end process;
end Behavioral;
