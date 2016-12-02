----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2016 10:48:11 PM
-- Design Name: 
-- Module Name: Fourier_Func_Gen - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Fourier_Func_Gen is
    Port ( Clk : in STD_LOGIC;
           Switches : in STD_LOGIC_VECTOR (15 downto 0);
           L_Button : in STD_LOGIC;
           R_Button : in STD_LOGIC;
           Push, Reset : in STD_LOGIC;
           CaBus : out STD_LOGIC_VECTOR (7 downto 0);
           AnBus : out STD_LOGIC_VECTOR (3 downto 0);
           Dac_Out : out STD_LOGIC);
end Fourier_Func_Gen;

architecture Behavioral of Fourier_Func_Gen is
    component Fourier_Register port (Clk, Push, L_Button, R_Button, Reset : in std_logic;
                                     switches : in std_logic_vector (15 downto 0);
                                     Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7 : out std_logic_vector(15 downto 0));
    end component;
    
    component Clock_Divider port (Master_Clock : in std_logic;
                                  Divider : in std_logic_vector (31 downto 0);
                                  Output_Clock : out std_logic);
    end component;
    
    component LCD_7_segment port (Clock : in std_logic;
                                  Input : in std_logic_vector (15 downto 0);
                                  Anode_bus : out std_logic_vector (3 downto 0);
                                  CaBus : out std_logic_vector (7 downto 0));
    end component;
    
    component Sigma_Delta port (Clk : in std_logic;
                                Modu_in : in std_logic_vector (15 downto 0);
                                Modu_out : out std_logic);
    end component;
    
    signal Clock_Main : std_logic;
    signal s_Reg0, s_Reg1, s_Reg2, s_Reg3, s_Reg4, s_Reg5, s_Reg6, s_Reg7 : std_logic_vector(15 downto 0);
    signal Display_Reg : std_logic_vector (15 downto 0);
    signal Sum_of_cos : std_logic_vector (15 downto 0);
begin
    Store_Amplitude : Fourier_Register port map ( Clk => Clock_Main, Push => Push, L_Button => L_Button, R_Button => R_Button, Reset => Reset, switches => switches,
                                                  Reg0 => s_Reg0, Reg1 => s_Reg1, Reg2 => s_Reg2, Reg3 => s_Reg3, Reg4 => s_Reg4, Reg5 => s_Reg5, Reg6 => s_Reg6, Reg7 => s_Reg7);
    Main_Clock_Gen : Clock_Divider port map (Master_Clock => Clk, Divider => std_logic_vector(to_unsigned(1000000 ,32)), Output_Clock => Clock_Main);
    LCD_Driver : LCD_7_Segment port map (Clock => Clock_Main, Input => Display_Reg, Anode_Bus => AnBus, CaBus => CaBus);
    One_Bit_DAC : Sigma_Delta port map (clk => Clock_Main, Modu_in => Sum_of_cos, Modu_out => Dac_out);

end Behavioral;
