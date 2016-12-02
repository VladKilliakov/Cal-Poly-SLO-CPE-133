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
                                     State : out std_logic_vector (2 downto 0);
                                     Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7 : out std_logic_vector(15 downto 0));
    end component;
    
    component Clk_Divider port (Master_Clk : in std_logic;
                                  Divider : in std_logic_vector (31 downto 0);
                                  Output_Clk : out std_logic);
    end component;
    
    component Sev_Seg_Driver port (Clk : in std_logic;
                                  Input : in std_logic_vector (15 downto 0);
                                  AnBus : out std_logic_vector (3 downto 0);
                                  CaBus : out std_logic_vector (7 downto 0));
    end component;
    
    component Sigma_Delta port (Clk : in std_logic;
                                Modu_in : in std_logic_vector (15 downto 0);
                                Modu_out : out std_logic);
    end component;
    
    signal Clk_Main : std_logic;
    signal Clk_Display : std_logic;
    signal Clk_Dac : std_logic;
    signal s_Reg0, s_Reg1, s_Reg2, s_Reg3, s_Reg4, s_Reg5, s_Reg6, s_Reg7 : std_logic_vector(15 downto 0);
    signal Display_Reg : std_logic_vector (15 downto 0);
    signal Sum_of_cos : std_logic_vector (15 downto 0);
begin
    Display_Reg(15) <= '0';
    Display_Reg(11 downto 0) <= Switches(11 downto 0);
    Store_Amplitude : Fourier_Register port map ( Clk => Clk_Main, Push => Push, L_Button => L_Button, R_Button => R_Button, Reset => Reset, switches => switches,
                                                  Reg0 => s_Reg0, Reg1 => s_Reg1, Reg2 => s_Reg2, Reg3 => s_Reg3, Reg4 => s_Reg4, Reg5 => s_Reg5, Reg6 => s_Reg6, Reg7 => s_Reg7,
                                                  State => Display_Reg(14 downto 12));
    Main_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(1000 ,32)), Output_Clk => Clk_Main);
    Display_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(300000, 32)), Output_Clk => Clk_Display);
    DAC_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(100000000, 32)), Output_Clk => Clk_Dac);
    LCD_Driver : Sev_Seg_Driver port map (Clk => Clk_Display, Input => Display_Reg, AnBus => AnBus, CaBus => CaBus);
    One_Bit_DAC : Sigma_Delta port map (clk => Clk_Dac, Modu_in => Sum_of_cos, Modu_out => Dac_out);

end Behavioral;
