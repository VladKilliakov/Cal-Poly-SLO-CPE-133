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
           R_Button : in std_logic;
           B_Button : in STD_LOGIC;
           M_Button, Reset : in STD_LOGIC;
           CaBus : out STD_LOGIC_VECTOR (7 downto 0);
           AnBus : out STD_LOGIC_VECTOR (3 downto 0);
           Dac_Out : out STD_LOGIC);
end Fourier_Func_Gen;

architecture Behavioral of Fourier_Func_Gen is
    component Fourier_Register port (Clk, M_Button, L_Button, R_Button, Reset : in std_logic;
                                     switches : in std_logic_vector (15 downto 0);
                                     State : out std_logic_vector (3 downto 0);
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
    
   
    component Disp_Output port (clk, B_Button, reset : in std_logic;
                                state : in std_logic_vector (3 downto 0);
                                curr_reg_setting : in std_logic_vector (15 downto 0);
                                sev_seg_out : out std_logic_vector (15 downto 0));
    end component;
    
    component Cos_Decoder port (reset, clk : in std_logic;
                                freq_multiplier : in std_logic_vector (2 downto 0);
                                sin_data, cos_data : out signed(15 downto 0));    
    end component;
    
    component scaler port (cos_in : in signed(15 downto 0);
                           Amplitude : in std_logic_vector(15 downto 0);
                           cos_out : out signed(15 downto 0));
    
    end component;
    signal Clk_Main, Clk_Display, Clk_Dac, Clk_Theta : std_logic;
    signal s_Reg0, s_Reg1, s_Reg2, s_Reg3, s_Reg4, s_Reg5, s_Reg6, s_Reg7 : std_logic_vector(15 downto 0);
    signal Sum_of_cos : std_logic_vector (15 downto 0);
    signal Reg_to_disp, sev_seg_val : std_logic_vector (15 downto 0);
    signal current_state : std_logic_vector (3 downto 0);
    signal cos_y1, cos_y2, cos_y3, cos_y4, cos_y5, cos_y6, cos_y7, cos_y8 : signed(15 downto 0);
    signal cos_scaled1, cos_scaled2, cos_scaled3, cos_scaled4, cos_scaled5, cos_scaled6, cos_scaled7, cos_scaled8 : signed(15 downto 0);
    signal Dac_in : std_logic_vector(15 downto 0);
begin

    --Clock Gen
    State_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(100000, 32)), Output_Clk => Clk_Main); -- 1kHz
    Display_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(250000, 32)), Output_Clk => Clk_Display); -- 400Hz
    DAC_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(1000, 32)), Output_Clk => Clk_Dac); --100kHz
    Inital_Theta_Clock_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(16, 32)), Output_Clk => Clk_Theta); -- 60kHz
    -- End Clock Gen
    Store_Amplitude : Fourier_Register port map ( Clk => Clk_Main, M_Button => M_Button, L_Button => L_Button, R_Button => R_Button, Reset => Reset, switches => switches,
        Reg0 => s_Reg0, Reg1 => s_Reg1, Reg2 => s_Reg2, Reg3 => s_Reg3, Reg4 => s_Reg4, Reg5 => s_Reg5, Reg6 => s_Reg6, Reg7 => s_Reg7, State => current_state);
    Sev_Seg_Output_Logic : Disp_Output port map (reset => reset, clk => Clk_Display, B_Button => B_Button, state => current_state, curr_reg_setting => Reg_to_Disp, sev_seg_out => sev_seg_val);
    Sev_Seg_Driver_Part : Sev_Seg_Driver port map (Clk => Clk_Display, Input => sev_seg_val, AnBus => AnBus, CaBus => CaBus);
    One_Bit_DAC : Sigma_Delta port map (clk => Clk_Dac, Modu_in => Sum_of_cos, Modu_out => Dac_out);
    --Cosine Calculator/ LUT
    Cos_1 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(1,3)), cos_data => cos_y1);
    Cos_2 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(2,3)), cos_data => cos_y2);
    Cos_3 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(3,3)), cos_data => cos_y3);
    Cos_4 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(4,3)), cos_data => cos_y4);
    Cos_5 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(5,3)), cos_data => cos_y5);
    Cos_6 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(6,3)), cos_data => cos_y6);
    Cos_7 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(7,3)), cos_data => cos_y7);
    Cos_8 : Cos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(8,3)), cos_data => cos_y8);
    --End Cosine Calculator/ LUT
    --Cosine Scaler(scales cosine values so that they can be added and adds in the amplitude from the register settings
    Scaled_0 : Scaler port map (cos_in => cos_y1, Amplitude => s_reg0, cos_out => cos_scaled1); 
    Scaled_1 : Scaler port map (cos_in => cos_y2, Amplitude => s_reg1, cos_out => cos_scaled2); 
    Scaled_2 : Scaler port map (cos_in => cos_y3, Amplitude => s_reg2, cos_out => cos_scaled3); 
    Scaled_3 : Scaler port map (cos_in => cos_y4, Amplitude => s_reg3, cos_out => cos_scaled4); 
    Scaled_4 : Scaler port map (cos_in => cos_y5, Amplitude => s_reg4, cos_out => cos_scaled5); 
    Scaled_5 : Scaler port map (cos_in => cos_y6, Amplitude => s_reg5, cos_out => cos_scaled6); 
    Scaled_6 : Scaler port map (cos_in => cos_y7, Amplitude => s_reg6, cos_out => cos_scaled7); 
    Scaled_7 : Scaler port map (cos_in => cos_y8, Amplitude => s_reg7, cos_out => cos_scaled8); 
    --End Cosine Scaler
    DAC_in <= std_logic_vector(cos_scaled1 + cos_scaled2 + cos_scaled3 + cos_scaled4 + cos_scaled5 + cos_scaled6 + cos_scaled7 + cos_scaled8);
    process (current_state) is
    begin
        case (current_state) is
            when "0001" => Reg_to_Disp <= s_Reg0;
            when "0010" => Reg_to_Disp <= s_Reg1;
            when "0011" => Reg_to_Disp <= s_Reg2;
            when "0100" => Reg_to_Disp <= s_Reg3;
            when "0101" => Reg_to_Disp <= s_Reg4;
            when "0110" => Reg_to_Disp <= s_Reg5;
            when "0111" => Reg_to_Disp <= s_Reg6;
            when "1000" => Reg_to_Disp <= s_Reg7;
            when others => Reg_to_Disp <= s_Reg0;
                
        end case;
    end process;
    
end Behavioral;
