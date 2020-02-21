-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/01/2017 14:01:17"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	i2c_control IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	out_i2c : OUT std_logic_vector(7 DOWNTO 0);
	sda : INOUT std_logic;
	scl : INOUT std_logic
	);
END i2c_control;

-- Design Ports Information
-- sda	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- scl	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[1]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[3]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[4]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_i2c[7]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF i2c_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_out_i2c : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~2_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[0]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[3]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[5]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[6]~regout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[8]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[10]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[12]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[19]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[21]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[22]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[24]~regout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[26]~regout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[28]~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|LessThan1~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|process_0~2_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|process_0~4_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~5_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~6_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count~5_combout\ : std_logic;
SIGNAL \scl~0\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.ready~feeder_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~11\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~12_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count~2_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~4_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~6_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|process_0~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|process_0~5_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|stretch~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|stretch~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~1\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~3\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~5\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~7\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~8_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count~4_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~9\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~10_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count~3_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Equal0~2_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count~1_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Equal0~3_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count~6_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Equal0~4_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add0~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|LessThan1~2_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|LessThan1~1_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|LessThan1~3_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|data_clk~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|data_clk~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|data_clk_prev~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|process_1~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.ready~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.start~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.start~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector25~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Add1~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Equal1~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector19~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.command~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector20~1_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.slv_ack2~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector20~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.wr~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~1_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state~14_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.mstr_ack~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector21~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.rd~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~2_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state~13_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|state.slv_ack1~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~3_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~4_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector23~7_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|sda_int~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector29~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|process_0~1_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|process_0~3_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|scl_clk~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|scl_clk~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|scl_ena~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|scl_ena~regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|scl~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \out_i2c[0]~reg0feeder_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector0~0_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|Selector0~1_combout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|busy~regout\ : std_logic;
SIGNAL \busy_prev~0_combout\ : std_logic;
SIGNAL \busy_prev~regout\ : std_logic;
SIGNAL \i2c_buss~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[1]~regout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[2]~regout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[4]~regout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[7]~regout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[11]~regout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[9]~regout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[13]~regout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[14]~regout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[15]~regout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[16]~regout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[17]~regout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[18]~regout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[20]~regout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[29]~regout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[23]~regout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[25]~regout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[27]~regout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[31]~regout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \i2c_buss:busy_cnt[30]~regout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \out_i2c[0]~reg0_regout\ : std_logic;
SIGNAL \out_i2c[2]~reg0feeder_combout\ : std_logic;
SIGNAL \out_i2c[2]~reg0_regout\ : std_logic;
SIGNAL \out_i2c[5]~reg0feeder_combout\ : std_logic;
SIGNAL \out_i2c[5]~reg0_regout\ : std_logic;
SIGNAL \out_i2c[6]~reg0feeder_combout\ : std_logic;
SIGNAL \out_i2c[6]~reg0_regout\ : std_logic;
SIGNAL \out_i2c[7]~reg0feeder_combout\ : std_logic;
SIGNAL \out_i2c[7]~reg0_regout\ : std_logic;
SIGNAL \I2C_MASTER_MAP|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \I2C_MASTER_MAP|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
out_i2c <= ww_out_i2c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: LCCOMB_X30_Y22_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\i2c_buss:busy_cnt[0]~regout\ & (\i2c_buss~0_combout\ $ (VCC))) # (!\i2c_buss:busy_cnt[0]~regout\ & (\i2c_buss~0_combout\ & VCC))
-- \Add0~1\ = CARRY((\i2c_buss:busy_cnt[0]~regout\ & \i2c_buss~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[0]~regout\,
	datab => \i2c_buss~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X30_Y22_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\i2c_buss:busy_cnt[5]~regout\ & (!\Add0~9\)) # (!\i2c_buss:busy_cnt[5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\i2c_buss:busy_cnt[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X30_Y22_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\i2c_buss:busy_cnt[6]~regout\ & (\Add0~11\ $ (GND))) # (!\i2c_buss:busy_cnt[6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\i2c_buss:busy_cnt[6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X30_Y22_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\i2c_buss:busy_cnt[10]~regout\ & (\Add0~19\ $ (GND))) # (!\i2c_buss:busy_cnt[10]~regout\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\i2c_buss:busy_cnt[10]~regout\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[10]~regout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X30_Y21_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\i2c_buss:busy_cnt[24]~regout\ & (\Add0~47\ $ (GND))) # (!\i2c_buss:busy_cnt[24]~regout\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\i2c_buss:busy_cnt[24]~regout\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[24]~regout\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X30_Y21_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\i2c_buss:busy_cnt[26]~regout\ & (\Add0~51\ $ (GND))) # (!\i2c_buss:busy_cnt[26]~regout\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\i2c_buss:busy_cnt[26]~regout\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[26]~regout\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X30_Y21_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\i2c_buss:busy_cnt[28]~regout\ & (\Add0~55\ $ (GND))) # (!\i2c_buss:busy_cnt[28]~regout\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\i2c_buss:busy_cnt[28]~regout\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[28]~regout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X29_Y26_N8
\I2C_MASTER_MAP|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add0~2_combout\ = (\I2C_MASTER_MAP|count\(1) & (!\I2C_MASTER_MAP|Add0~1\)) # (!\I2C_MASTER_MAP|count\(1) & ((\I2C_MASTER_MAP|Add0~1\) # (GND)))
-- \I2C_MASTER_MAP|Add0~3\ = CARRY((!\I2C_MASTER_MAP|Add0~1\) # (!\I2C_MASTER_MAP|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count\(1),
	datad => VCC,
	cin => \I2C_MASTER_MAP|Add0~1\,
	combout => \I2C_MASTER_MAP|Add0~2_combout\,
	cout => \I2C_MASTER_MAP|Add0~3\);

-- Location: LCFF_X30_Y22_N1
\i2c_buss:busy_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[0]~regout\);

-- Location: LCFF_X30_Y22_N7
\i2c_buss:busy_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[3]~regout\);

-- Location: LCFF_X30_Y22_N11
\i2c_buss:busy_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[5]~regout\);

-- Location: LCFF_X30_Y22_N13
\i2c_buss:busy_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[6]~regout\);

-- Location: LCCOMB_X31_Y22_N2
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~8_combout\ & (!\Add0~10_combout\ & (!\Add0~12_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCFF_X30_Y22_N17
\i2c_buss:busy_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[8]~regout\);

-- Location: LCFF_X30_Y22_N21
\i2c_buss:busy_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[10]~regout\);

-- Location: LCFF_X30_Y22_N25
\i2c_buss:busy_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[12]~regout\);

-- Location: LCFF_X30_Y21_N7
\i2c_buss:busy_cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~38_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[19]~regout\);

-- Location: LCFF_X30_Y21_N11
\i2c_buss:busy_cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~42_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[21]~regout\);

-- Location: LCFF_X30_Y21_N13
\i2c_buss:busy_cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~44_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[22]~regout\);

-- Location: LCFF_X30_Y21_N17
\i2c_buss:busy_cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~48_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[24]~regout\);

-- Location: LCFF_X30_Y21_N21
\i2c_buss:busy_cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~52_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[26]~regout\);

-- Location: LCCOMB_X31_Y21_N6
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~52_combout\ & (!\Add0~48_combout\ & (!\Add0~50_combout\ & !\Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~50_combout\,
	datad => \Add0~54_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCFF_X30_Y21_N25
\i2c_buss:busy_cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~56_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[28]~regout\);

-- Location: LCFF_X29_Y26_N25
\I2C_MASTER_MAP|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|count~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|count\(1));

-- Location: LCCOMB_X30_Y26_N2
\I2C_MASTER_MAP|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|LessThan1~0_combout\ = (\I2C_MASTER_MAP|Add0~2_combout\ & (\I2C_MASTER_MAP|Add0~0_combout\ & \I2C_MASTER_MAP|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Add0~2_combout\,
	datac => \I2C_MASTER_MAP|Add0~0_combout\,
	datad => \I2C_MASTER_MAP|Add0~8_combout\,
	combout => \I2C_MASTER_MAP|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y26_N10
\I2C_MASTER_MAP|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|process_0~2_combout\ = (!\I2C_MASTER_MAP|Add0~10_combout\ & (((!\I2C_MASTER_MAP|count~0_combout\) # (!\I2C_MASTER_MAP|LessThan1~0_combout\)) # (!\I2C_MASTER_MAP|count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count~1_combout\,
	datab => \I2C_MASTER_MAP|LessThan1~0_combout\,
	datac => \I2C_MASTER_MAP|count~0_combout\,
	datad => \I2C_MASTER_MAP|Add0~10_combout\,
	combout => \I2C_MASTER_MAP|process_0~2_combout\);

-- Location: LCCOMB_X30_Y26_N6
\I2C_MASTER_MAP|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|process_0~4_combout\ = (\I2C_MASTER_MAP|Add0~8_combout\ & ((\I2C_MASTER_MAP|Add0~2_combout\) # ((!\I2C_MASTER_MAP|Add0~10_combout\ & \I2C_MASTER_MAP|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Add0~2_combout\,
	datab => \I2C_MASTER_MAP|Add0~10_combout\,
	datac => \I2C_MASTER_MAP|Add0~0_combout\,
	datad => \I2C_MASTER_MAP|Add0~8_combout\,
	combout => \I2C_MASTER_MAP|process_0~4_combout\);

-- Location: LCCOMB_X32_Y22_N10
\I2C_MASTER_MAP|Selector23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~5_combout\ = ((\I2C_MASTER_MAP|bit_cnt\(2) & (\I2C_MASTER_MAP|bit_cnt\(0))) # (!\I2C_MASTER_MAP|bit_cnt\(2) & ((!\I2C_MASTER_MAP|bit_cnt\(1)) # (!\I2C_MASTER_MAP|bit_cnt\(0))))) # (!\I2C_MASTER_MAP|state.slv_ack2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|bit_cnt\(2),
	datab => \I2C_MASTER_MAP|bit_cnt\(0),
	datac => \I2C_MASTER_MAP|state.slv_ack2~regout\,
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|Selector23~5_combout\);

-- Location: LCCOMB_X32_Y22_N16
\I2C_MASTER_MAP|Selector23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~6_combout\ = (\I2C_MASTER_MAP|Selector23~5_combout\ & ((\I2C_MASTER_MAP|state.ready~regout\) # (!\I2C_MASTER_MAP|sda_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Selector23~5_combout\,
	datac => \I2C_MASTER_MAP|sda_int~regout\,
	datad => \I2C_MASTER_MAP|state.ready~regout\,
	combout => \I2C_MASTER_MAP|Selector23~6_combout\);

-- Location: LCCOMB_X29_Y26_N24
\I2C_MASTER_MAP|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|count~5_combout\ = (\I2C_MASTER_MAP|Add0~2_combout\ & ((!\I2C_MASTER_MAP|Equal0~3_combout\) # (!\I2C_MASTER_MAP|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|Equal0~2_combout\,
	datac => \I2C_MASTER_MAP|Add0~2_combout\,
	datad => \I2C_MASTER_MAP|Equal0~3_combout\,
	combout => \I2C_MASTER_MAP|count~5_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\scl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I2C_MASTER_MAP|scl~1_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => scl,
	combout => \scl~0\);

-- Location: LCCOMB_X31_Y22_N28
\I2C_MASTER_MAP|state.ready~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|state.ready~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \I2C_MASTER_MAP|state.ready~feeder_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCFF_X29_Y26_N9
\I2C_MASTER_MAP|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \I2C_MASTER_MAP|count~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|count\(6));

-- Location: LCCOMB_X29_Y26_N16
\I2C_MASTER_MAP|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add0~10_combout\ = (\I2C_MASTER_MAP|count\(5) & (!\I2C_MASTER_MAP|Add0~9\)) # (!\I2C_MASTER_MAP|count\(5) & ((\I2C_MASTER_MAP|Add0~9\) # (GND)))
-- \I2C_MASTER_MAP|Add0~11\ = CARRY((!\I2C_MASTER_MAP|Add0~9\) # (!\I2C_MASTER_MAP|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|count\(5),
	datad => VCC,
	cin => \I2C_MASTER_MAP|Add0~9\,
	combout => \I2C_MASTER_MAP|Add0~10_combout\,
	cout => \I2C_MASTER_MAP|Add0~11\);

-- Location: LCCOMB_X29_Y26_N18
\I2C_MASTER_MAP|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add0~12_combout\ = \I2C_MASTER_MAP|Add0~11\ $ (!\I2C_MASTER_MAP|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C_MASTER_MAP|count\(6),
	cin => \I2C_MASTER_MAP|Add0~11\,
	combout => \I2C_MASTER_MAP|Add0~12_combout\);

-- Location: LCCOMB_X30_Y26_N0
\I2C_MASTER_MAP|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|count~2_combout\ = (\I2C_MASTER_MAP|Add0~12_combout\ & ((!\I2C_MASTER_MAP|Equal0~3_combout\) # (!\I2C_MASTER_MAP|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Equal0~2_combout\,
	datab => \I2C_MASTER_MAP|Add0~12_combout\,
	datac => \I2C_MASTER_MAP|Equal0~3_combout\,
	combout => \I2C_MASTER_MAP|count~2_combout\);

-- Location: LCCOMB_X29_Y26_N10
\I2C_MASTER_MAP|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add0~4_combout\ = (\I2C_MASTER_MAP|count\(2) & (\I2C_MASTER_MAP|Add0~3\ $ (GND))) # (!\I2C_MASTER_MAP|count\(2) & (!\I2C_MASTER_MAP|Add0~3\ & VCC))
-- \I2C_MASTER_MAP|Add0~5\ = CARRY((\I2C_MASTER_MAP|count\(2) & !\I2C_MASTER_MAP|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count\(2),
	datad => VCC,
	cin => \I2C_MASTER_MAP|Add0~3\,
	combout => \I2C_MASTER_MAP|Add0~4_combout\,
	cout => \I2C_MASTER_MAP|Add0~5\);

-- Location: LCCOMB_X29_Y26_N12
\I2C_MASTER_MAP|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add0~6_combout\ = (\I2C_MASTER_MAP|count\(3) & (!\I2C_MASTER_MAP|Add0~5\)) # (!\I2C_MASTER_MAP|count\(3) & ((\I2C_MASTER_MAP|Add0~5\) # (GND)))
-- \I2C_MASTER_MAP|Add0~7\ = CARRY((!\I2C_MASTER_MAP|Add0~5\) # (!\I2C_MASTER_MAP|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count\(3),
	datad => VCC,
	cin => \I2C_MASTER_MAP|Add0~5\,
	combout => \I2C_MASTER_MAP|Add0~6_combout\,
	cout => \I2C_MASTER_MAP|Add0~7\);

-- Location: LCCOMB_X30_Y26_N4
\I2C_MASTER_MAP|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|process_0~0_combout\ = (\I2C_MASTER_MAP|Add0~4_combout\ & (\I2C_MASTER_MAP|Add0~6_combout\ & ((!\I2C_MASTER_MAP|Equal0~2_combout\) # (!\I2C_MASTER_MAP|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Equal0~3_combout\,
	datab => \I2C_MASTER_MAP|Add0~4_combout\,
	datac => \I2C_MASTER_MAP|Equal0~2_combout\,
	datad => \I2C_MASTER_MAP|Add0~6_combout\,
	combout => \I2C_MASTER_MAP|process_0~0_combout\);

-- Location: LCCOMB_X30_Y26_N30
\I2C_MASTER_MAP|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|process_0~5_combout\ = (\I2C_MASTER_MAP|count~2_combout\ & ((\I2C_MASTER_MAP|Add0~10_combout\) # ((\I2C_MASTER_MAP|process_0~4_combout\ & \I2C_MASTER_MAP|process_0~0_combout\)))) # (!\I2C_MASTER_MAP|count~2_combout\ & 
-- (((!\I2C_MASTER_MAP|Add0~10_combout\) # (!\I2C_MASTER_MAP|process_0~0_combout\)) # (!\I2C_MASTER_MAP|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|process_0~4_combout\,
	datab => \I2C_MASTER_MAP|count~2_combout\,
	datac => \I2C_MASTER_MAP|process_0~0_combout\,
	datad => \I2C_MASTER_MAP|Add0~10_combout\,
	combout => \I2C_MASTER_MAP|process_0~5_combout\);

-- Location: LCCOMB_X29_Y26_N2
\I2C_MASTER_MAP|stretch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|stretch~0_combout\ = (\I2C_MASTER_MAP|process_0~5_combout\ & ((\I2C_MASTER_MAP|stretch~regout\))) # (!\I2C_MASTER_MAP|process_0~5_combout\ & (!\scl~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scl~0\,
	datac => \I2C_MASTER_MAP|stretch~regout\,
	datad => \I2C_MASTER_MAP|process_0~5_combout\,
	combout => \I2C_MASTER_MAP|stretch~0_combout\);

-- Location: LCFF_X29_Y26_N3
\I2C_MASTER_MAP|stretch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|stretch~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|stretch~regout\);

-- Location: LCCOMB_X29_Y26_N6
\I2C_MASTER_MAP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add0~0_combout\ = (\I2C_MASTER_MAP|count\(0) & (\I2C_MASTER_MAP|stretch~regout\ $ (GND))) # (!\I2C_MASTER_MAP|count\(0) & (!\I2C_MASTER_MAP|stretch~regout\ & VCC))
-- \I2C_MASTER_MAP|Add0~1\ = CARRY((\I2C_MASTER_MAP|count\(0) & !\I2C_MASTER_MAP|stretch~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count\(0),
	datab => \I2C_MASTER_MAP|stretch~regout\,
	datad => VCC,
	combout => \I2C_MASTER_MAP|Add0~0_combout\,
	cout => \I2C_MASTER_MAP|Add0~1\);

-- Location: LCCOMB_X29_Y26_N14
\I2C_MASTER_MAP|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add0~8_combout\ = (\I2C_MASTER_MAP|count\(4) & (\I2C_MASTER_MAP|Add0~7\ $ (GND))) # (!\I2C_MASTER_MAP|count\(4) & (!\I2C_MASTER_MAP|Add0~7\ & VCC))
-- \I2C_MASTER_MAP|Add0~9\ = CARRY((\I2C_MASTER_MAP|count\(4) & !\I2C_MASTER_MAP|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|count\(4),
	datad => VCC,
	cin => \I2C_MASTER_MAP|Add0~7\,
	combout => \I2C_MASTER_MAP|Add0~8_combout\,
	cout => \I2C_MASTER_MAP|Add0~9\);

-- Location: LCCOMB_X29_Y26_N28
\I2C_MASTER_MAP|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|count~4_combout\ = (\I2C_MASTER_MAP|Add0~8_combout\ & ((!\I2C_MASTER_MAP|Equal0~3_combout\) # (!\I2C_MASTER_MAP|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|Equal0~2_combout\,
	datac => \I2C_MASTER_MAP|Add0~8_combout\,
	datad => \I2C_MASTER_MAP|Equal0~3_combout\,
	combout => \I2C_MASTER_MAP|count~4_combout\);

-- Location: LCFF_X29_Y26_N29
\I2C_MASTER_MAP|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|count~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|count\(4));

-- Location: LCCOMB_X29_Y26_N22
\I2C_MASTER_MAP|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|count~3_combout\ = (\I2C_MASTER_MAP|Add0~10_combout\ & ((!\I2C_MASTER_MAP|Equal0~2_combout\) # (!\I2C_MASTER_MAP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|Equal0~3_combout\,
	datac => \I2C_MASTER_MAP|Add0~10_combout\,
	datad => \I2C_MASTER_MAP|Equal0~2_combout\,
	combout => \I2C_MASTER_MAP|count~3_combout\);

-- Location: LCFF_X29_Y26_N23
\I2C_MASTER_MAP|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|count~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|count\(5));

-- Location: LCCOMB_X29_Y26_N4
\I2C_MASTER_MAP|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|count~0_combout\ = (\I2C_MASTER_MAP|Add0~6_combout\ & ((!\I2C_MASTER_MAP|Equal0~3_combout\) # (!\I2C_MASTER_MAP|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|Equal0~2_combout\,
	datac => \I2C_MASTER_MAP|Add0~6_combout\,
	datad => \I2C_MASTER_MAP|Equal0~3_combout\,
	combout => \I2C_MASTER_MAP|count~0_combout\);

-- Location: LCFF_X29_Y26_N21
\I2C_MASTER_MAP|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \I2C_MASTER_MAP|count~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|count\(3));

-- Location: LCCOMB_X29_Y26_N20
\I2C_MASTER_MAP|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Equal0~2_combout\ = (\I2C_MASTER_MAP|count\(6) & (\I2C_MASTER_MAP|count\(5) & (\I2C_MASTER_MAP|count\(3) & \I2C_MASTER_MAP|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count\(6),
	datab => \I2C_MASTER_MAP|count\(5),
	datac => \I2C_MASTER_MAP|count\(3),
	datad => \I2C_MASTER_MAP|count\(4),
	combout => \I2C_MASTER_MAP|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y26_N28
\I2C_MASTER_MAP|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|count~1_combout\ = (\I2C_MASTER_MAP|Add0~4_combout\ & ((!\I2C_MASTER_MAP|Equal0~2_combout\) # (!\I2C_MASTER_MAP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Equal0~3_combout\,
	datac => \I2C_MASTER_MAP|Equal0~2_combout\,
	datad => \I2C_MASTER_MAP|Add0~4_combout\,
	combout => \I2C_MASTER_MAP|count~1_combout\);

-- Location: LCFF_X29_Y26_N1
\I2C_MASTER_MAP|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \I2C_MASTER_MAP|count~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|count\(2));

-- Location: LCCOMB_X29_Y26_N0
\I2C_MASTER_MAP|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Equal0~3_combout\ = (\I2C_MASTER_MAP|count\(1) & (\I2C_MASTER_MAP|count\(0) & !\I2C_MASTER_MAP|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count\(1),
	datab => \I2C_MASTER_MAP|count\(0),
	datac => \I2C_MASTER_MAP|count\(2),
	combout => \I2C_MASTER_MAP|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y26_N30
\I2C_MASTER_MAP|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|count~6_combout\ = (\I2C_MASTER_MAP|Add0~0_combout\ & ((!\I2C_MASTER_MAP|Equal0~2_combout\) # (!\I2C_MASTER_MAP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Add0~0_combout\,
	datab => \I2C_MASTER_MAP|Equal0~3_combout\,
	datad => \I2C_MASTER_MAP|Equal0~2_combout\,
	combout => \I2C_MASTER_MAP|count~6_combout\);

-- Location: LCFF_X29_Y26_N31
\I2C_MASTER_MAP|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|count~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|count\(0));

-- Location: LCCOMB_X29_Y26_N26
\I2C_MASTER_MAP|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Equal0~4_combout\ = (\I2C_MASTER_MAP|count\(1) & (\I2C_MASTER_MAP|count\(0) & (!\I2C_MASTER_MAP|count\(2) & \I2C_MASTER_MAP|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|count\(1),
	datab => \I2C_MASTER_MAP|count\(0),
	datac => \I2C_MASTER_MAP|count\(2),
	datad => \I2C_MASTER_MAP|Equal0~2_combout\,
	combout => \I2C_MASTER_MAP|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y26_N16
\I2C_MASTER_MAP|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|LessThan1~2_combout\ = (\I2C_MASTER_MAP|Add0~2_combout\ & (\I2C_MASTER_MAP|count~1_combout\ & (\I2C_MASTER_MAP|Add0~0_combout\ & \I2C_MASTER_MAP|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Add0~2_combout\,
	datab => \I2C_MASTER_MAP|count~1_combout\,
	datac => \I2C_MASTER_MAP|Add0~0_combout\,
	datad => \I2C_MASTER_MAP|Add0~8_combout\,
	combout => \I2C_MASTER_MAP|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y26_N22
\I2C_MASTER_MAP|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|LessThan1~1_combout\ = (\I2C_MASTER_MAP|Add0~10_combout\) # (\I2C_MASTER_MAP|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|Add0~10_combout\,
	datad => \I2C_MASTER_MAP|Add0~12_combout\,
	combout => \I2C_MASTER_MAP|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y26_N8
\I2C_MASTER_MAP|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|LessThan1~3_combout\ = (!\I2C_MASTER_MAP|Equal0~4_combout\ & ((\I2C_MASTER_MAP|LessThan1~1_combout\) # ((\I2C_MASTER_MAP|Add0~6_combout\ & \I2C_MASTER_MAP|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Add0~6_combout\,
	datab => \I2C_MASTER_MAP|Equal0~4_combout\,
	datac => \I2C_MASTER_MAP|LessThan1~2_combout\,
	datad => \I2C_MASTER_MAP|LessThan1~1_combout\,
	combout => \I2C_MASTER_MAP|LessThan1~3_combout\);

-- Location: LCCOMB_X30_Y26_N14
\I2C_MASTER_MAP|data_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|data_clk~0_combout\ = (\I2C_MASTER_MAP|LessThan1~3_combout\ & ((!\I2C_MASTER_MAP|process_0~5_combout\) # (!\I2C_MASTER_MAP|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|process_0~3_combout\,
	datac => \I2C_MASTER_MAP|LessThan1~3_combout\,
	datad => \I2C_MASTER_MAP|process_0~5_combout\,
	combout => \I2C_MASTER_MAP|data_clk~0_combout\);

-- Location: LCFF_X30_Y26_N15
\I2C_MASTER_MAP|data_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|data_clk~0_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|data_clk~regout\);

-- Location: LCFF_X30_Y26_N21
\I2C_MASTER_MAP|data_clk_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \I2C_MASTER_MAP|data_clk~regout\,
	sload => VCC,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|data_clk_prev~regout\);

-- Location: LCCOMB_X31_Y22_N30
\I2C_MASTER_MAP|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|process_1~0_combout\ = (!\I2C_MASTER_MAP|data_clk_prev~regout\ & \I2C_MASTER_MAP|data_clk~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_MASTER_MAP|data_clk_prev~regout\,
	datad => \I2C_MASTER_MAP|data_clk~regout\,
	combout => \I2C_MASTER_MAP|process_1~0_combout\);

-- Location: LCFF_X31_Y22_N29
\I2C_MASTER_MAP|state.ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|state.ready~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.ready~regout\);

-- Location: LCCOMB_X31_Y22_N8
\I2C_MASTER_MAP|state.start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|state.start~0_combout\ = !\I2C_MASTER_MAP|state.ready~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C_MASTER_MAP|state.ready~regout\,
	combout => \I2C_MASTER_MAP|state.start~0_combout\);

-- Location: LCFF_X31_Y22_N9
\I2C_MASTER_MAP|state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|state.start~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.start~regout\);

-- Location: LCCOMB_X32_Y22_N26
\I2C_MASTER_MAP|bit_cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|bit_cnt[0]~1_combout\ = !\I2C_MASTER_MAP|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_MASTER_MAP|bit_cnt\(0),
	combout => \I2C_MASTER_MAP|bit_cnt[0]~1_combout\);

-- Location: LCCOMB_X32_Y22_N30
\I2C_MASTER_MAP|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector25~0_combout\ = \I2C_MASTER_MAP|bit_cnt\(1) $ (\I2C_MASTER_MAP|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_MASTER_MAP|bit_cnt\(1),
	datad => \I2C_MASTER_MAP|bit_cnt\(0),
	combout => \I2C_MASTER_MAP|Selector25~0_combout\);

-- Location: LCFF_X32_Y22_N31
\I2C_MASTER_MAP|bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Selector25~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|bit_cnt\(1));

-- Location: LCCOMB_X32_Y22_N0
\I2C_MASTER_MAP|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Add1~0_combout\ = \I2C_MASTER_MAP|bit_cnt\(2) $ (((\I2C_MASTER_MAP|bit_cnt\(0) & \I2C_MASTER_MAP|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|bit_cnt\(0),
	datac => \I2C_MASTER_MAP|bit_cnt\(2),
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|Add1~0_combout\);

-- Location: LCFF_X32_Y22_N1
\I2C_MASTER_MAP|bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Add1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|bit_cnt\(2));

-- Location: LCCOMB_X32_Y22_N4
\I2C_MASTER_MAP|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Equal1~0_combout\ = (\I2C_MASTER_MAP|bit_cnt\(0) & (\I2C_MASTER_MAP|bit_cnt\(2) & \I2C_MASTER_MAP|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|bit_cnt\(0),
	datac => \I2C_MASTER_MAP|bit_cnt\(2),
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y22_N4
\I2C_MASTER_MAP|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector19~0_combout\ = (\I2C_MASTER_MAP|state.start~regout\) # ((\I2C_MASTER_MAP|state.command~regout\ & !\I2C_MASTER_MAP|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|state.start~regout\,
	datac => \I2C_MASTER_MAP|state.command~regout\,
	datad => \I2C_MASTER_MAP|Equal1~0_combout\,
	combout => \I2C_MASTER_MAP|Selector19~0_combout\);

-- Location: LCFF_X31_Y22_N5
\I2C_MASTER_MAP|state.command\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Selector19~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.command~regout\);

-- Location: LCCOMB_X32_Y22_N14
\I2C_MASTER_MAP|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector20~1_combout\ = (\I2C_MASTER_MAP|state.wr~regout\ & (\I2C_MASTER_MAP|bit_cnt\(0) & (\I2C_MASTER_MAP|bit_cnt\(2) & \I2C_MASTER_MAP|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.wr~regout\,
	datab => \I2C_MASTER_MAP|bit_cnt\(0),
	datac => \I2C_MASTER_MAP|bit_cnt\(2),
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|Selector20~1_combout\);

-- Location: LCFF_X32_Y22_N15
\I2C_MASTER_MAP|state.slv_ack2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Selector20~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.slv_ack2~regout\);

-- Location: LCCOMB_X32_Y22_N12
\I2C_MASTER_MAP|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector20~0_combout\ = (\I2C_MASTER_MAP|state.wr~regout\ & (((!\I2C_MASTER_MAP|Equal1~0_combout\)))) # (!\I2C_MASTER_MAP|state.wr~regout\ & ((\I2C_MASTER_MAP|state.slv_ack1~regout\) # ((\I2C_MASTER_MAP|state.slv_ack2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.slv_ack1~regout\,
	datab => \I2C_MASTER_MAP|state.slv_ack2~regout\,
	datac => \I2C_MASTER_MAP|state.wr~regout\,
	datad => \I2C_MASTER_MAP|Equal1~0_combout\,
	combout => \I2C_MASTER_MAP|Selector20~0_combout\);

-- Location: LCFF_X32_Y22_N13
\I2C_MASTER_MAP|state.wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Selector20~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.wr~regout\);

-- Location: LCCOMB_X32_Y22_N22
\I2C_MASTER_MAP|bit_cnt[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|bit_cnt[2]~0_combout\ = (\I2C_MASTER_MAP|process_1~0_combout\ & ((\I2C_MASTER_MAP|state.rd~regout\) # ((\I2C_MASTER_MAP|state.command~regout\) # (\I2C_MASTER_MAP|state.wr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.rd~regout\,
	datab => \I2C_MASTER_MAP|state.command~regout\,
	datac => \I2C_MASTER_MAP|process_1~0_combout\,
	datad => \I2C_MASTER_MAP|state.wr~regout\,
	combout => \I2C_MASTER_MAP|bit_cnt[2]~0_combout\);

-- Location: LCFF_X32_Y22_N27
\I2C_MASTER_MAP|bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|bit_cnt[0]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|bit_cnt\(0));

-- Location: LCCOMB_X32_Y22_N8
\I2C_MASTER_MAP|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~1_combout\ = ((\I2C_MASTER_MAP|bit_cnt\(2) & ((\I2C_MASTER_MAP|bit_cnt\(1)) # (!\I2C_MASTER_MAP|bit_cnt\(0)))) # (!\I2C_MASTER_MAP|bit_cnt\(2) & ((!\I2C_MASTER_MAP|bit_cnt\(1))))) # (!\I2C_MASTER_MAP|state.wr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.wr~regout\,
	datab => \I2C_MASTER_MAP|bit_cnt\(0),
	datac => \I2C_MASTER_MAP|bit_cnt\(2),
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|Selector23~1_combout\);

-- Location: LCCOMB_X32_Y22_N28
\I2C_MASTER_MAP|state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|state~14_combout\ = (\I2C_MASTER_MAP|state.rd~regout\ & (\I2C_MASTER_MAP|bit_cnt\(0) & (\I2C_MASTER_MAP|bit_cnt\(2) & \I2C_MASTER_MAP|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.rd~regout\,
	datab => \I2C_MASTER_MAP|bit_cnt\(0),
	datac => \I2C_MASTER_MAP|bit_cnt\(2),
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|state~14_combout\);

-- Location: LCFF_X32_Y22_N29
\I2C_MASTER_MAP|state.mstr_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|state~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.mstr_ack~regout\);

-- Location: LCCOMB_X32_Y22_N6
\I2C_MASTER_MAP|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector21~0_combout\ = (\I2C_MASTER_MAP|state.mstr_ack~regout\) # ((!\I2C_MASTER_MAP|Equal1~0_combout\ & \I2C_MASTER_MAP|state.rd~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|Equal1~0_combout\,
	datac => \I2C_MASTER_MAP|state.rd~regout\,
	datad => \I2C_MASTER_MAP|state.mstr_ack~regout\,
	combout => \I2C_MASTER_MAP|Selector21~0_combout\);

-- Location: LCFF_X32_Y22_N7
\I2C_MASTER_MAP|state.rd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Selector21~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.rd~regout\);

-- Location: LCCOMB_X32_Y22_N2
\I2C_MASTER_MAP|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~0_combout\ = ((!\I2C_MASTER_MAP|Equal1~0_combout\ & !\I2C_MASTER_MAP|sda_int~regout\)) # (!\I2C_MASTER_MAP|state.rd~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|Equal1~0_combout\,
	datac => \I2C_MASTER_MAP|sda_int~regout\,
	datad => \I2C_MASTER_MAP|state.rd~regout\,
	combout => \I2C_MASTER_MAP|Selector23~0_combout\);

-- Location: LCCOMB_X32_Y22_N18
\I2C_MASTER_MAP|Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~2_combout\ = (\I2C_MASTER_MAP|Selector23~1_combout\ & (\I2C_MASTER_MAP|Selector23~0_combout\ & ((\I2C_MASTER_MAP|Equal1~0_combout\) # (!\I2C_MASTER_MAP|state.command~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Equal1~0_combout\,
	datab => \I2C_MASTER_MAP|Selector23~1_combout\,
	datac => \I2C_MASTER_MAP|state.command~regout\,
	datad => \I2C_MASTER_MAP|Selector23~0_combout\,
	combout => \I2C_MASTER_MAP|Selector23~2_combout\);

-- Location: LCCOMB_X31_Y22_N26
\I2C_MASTER_MAP|state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|state~13_combout\ = (\I2C_MASTER_MAP|state.command~regout\ & (\I2C_MASTER_MAP|bit_cnt\(2) & (\I2C_MASTER_MAP|bit_cnt\(0) & \I2C_MASTER_MAP|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.command~regout\,
	datab => \I2C_MASTER_MAP|bit_cnt\(2),
	datac => \I2C_MASTER_MAP|bit_cnt\(0),
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|state~13_combout\);

-- Location: LCFF_X31_Y22_N27
\I2C_MASTER_MAP|state.slv_ack1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|state~13_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|state.slv_ack1~regout\);

-- Location: LCCOMB_X32_Y22_N20
\I2C_MASTER_MAP|Selector23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~3_combout\ = ((\I2C_MASTER_MAP|bit_cnt\(2) & (\I2C_MASTER_MAP|bit_cnt\(0))) # (!\I2C_MASTER_MAP|bit_cnt\(2) & ((!\I2C_MASTER_MAP|bit_cnt\(1)) # (!\I2C_MASTER_MAP|bit_cnt\(0))))) # (!\I2C_MASTER_MAP|state.slv_ack1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|bit_cnt\(2),
	datab => \I2C_MASTER_MAP|bit_cnt\(0),
	datac => \I2C_MASTER_MAP|state.slv_ack1~regout\,
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|Selector23~3_combout\);

-- Location: LCCOMB_X31_Y22_N14
\I2C_MASTER_MAP|Selector23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~4_combout\ = ((!\I2C_MASTER_MAP|bit_cnt\(0) & (!\I2C_MASTER_MAP|bit_cnt\(2) & !\I2C_MASTER_MAP|bit_cnt\(1)))) # (!\I2C_MASTER_MAP|state.start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|bit_cnt\(0),
	datab => \I2C_MASTER_MAP|bit_cnt\(2),
	datac => \I2C_MASTER_MAP|state.start~regout\,
	datad => \I2C_MASTER_MAP|bit_cnt\(1),
	combout => \I2C_MASTER_MAP|Selector23~4_combout\);

-- Location: LCCOMB_X32_Y22_N24
\I2C_MASTER_MAP|Selector23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector23~7_combout\ = (((!\I2C_MASTER_MAP|Selector23~4_combout\) # (!\I2C_MASTER_MAP|Selector23~3_combout\)) # (!\I2C_MASTER_MAP|Selector23~2_combout\)) # (!\I2C_MASTER_MAP|Selector23~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Selector23~6_combout\,
	datab => \I2C_MASTER_MAP|Selector23~2_combout\,
	datac => \I2C_MASTER_MAP|Selector23~3_combout\,
	datad => \I2C_MASTER_MAP|Selector23~4_combout\,
	combout => \I2C_MASTER_MAP|Selector23~7_combout\);

-- Location: LCFF_X32_Y22_N25
\I2C_MASTER_MAP|sda_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Selector23~7_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|sda_int~regout\);

-- Location: LCCOMB_X31_Y22_N0
\I2C_MASTER_MAP|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector29~0_combout\ = (\I2C_MASTER_MAP|state.start~regout\ & (\I2C_MASTER_MAP|data_clk_prev~regout\)) # (!\I2C_MASTER_MAP|state.start~regout\ & ((!\I2C_MASTER_MAP|sda_int~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|state.start~regout\,
	datac => \I2C_MASTER_MAP|data_clk_prev~regout\,
	datad => \I2C_MASTER_MAP|sda_int~regout\,
	combout => \I2C_MASTER_MAP|Selector29~0_combout\);

-- Location: LCCOMB_X30_Y26_N24
\I2C_MASTER_MAP|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|process_0~1_combout\ = (\I2C_MASTER_MAP|Add0~2_combout\ & (\I2C_MASTER_MAP|Add0~10_combout\ & (\I2C_MASTER_MAP|process_0~0_combout\ & \I2C_MASTER_MAP|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|Add0~2_combout\,
	datab => \I2C_MASTER_MAP|Add0~10_combout\,
	datac => \I2C_MASTER_MAP|process_0~0_combout\,
	datad => \I2C_MASTER_MAP|Add0~8_combout\,
	combout => \I2C_MASTER_MAP|process_0~1_combout\);

-- Location: LCCOMB_X30_Y26_N12
\I2C_MASTER_MAP|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|process_0~3_combout\ = (\I2C_MASTER_MAP|process_0~2_combout\) # ((\I2C_MASTER_MAP|Equal0~4_combout\) # ((\I2C_MASTER_MAP|process_0~1_combout\) # (\I2C_MASTER_MAP|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|process_0~2_combout\,
	datab => \I2C_MASTER_MAP|Equal0~4_combout\,
	datac => \I2C_MASTER_MAP|process_0~1_combout\,
	datad => \I2C_MASTER_MAP|Add0~12_combout\,
	combout => \I2C_MASTER_MAP|process_0~3_combout\);

-- Location: LCCOMB_X30_Y26_N18
\I2C_MASTER_MAP|scl_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|scl_clk~0_combout\ = (\I2C_MASTER_MAP|LessThan1~3_combout\ & \I2C_MASTER_MAP|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_MASTER_MAP|LessThan1~3_combout\,
	datad => \I2C_MASTER_MAP|process_0~3_combout\,
	combout => \I2C_MASTER_MAP|scl_clk~0_combout\);

-- Location: LCFF_X30_Y26_N19
\I2C_MASTER_MAP|scl_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|scl_clk~0_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|scl_clk~regout\);

-- Location: LCCOMB_X30_Y26_N26
\I2C_MASTER_MAP|scl_ena~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|scl_ena~0_combout\ = (\I2C_MASTER_MAP|scl_ena~regout\) # ((\I2C_MASTER_MAP|state.start~regout\ & (!\I2C_MASTER_MAP|data_clk~regout\ & \I2C_MASTER_MAP|data_clk_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.start~regout\,
	datab => \I2C_MASTER_MAP|data_clk~regout\,
	datac => \I2C_MASTER_MAP|scl_ena~regout\,
	datad => \I2C_MASTER_MAP|data_clk_prev~regout\,
	combout => \I2C_MASTER_MAP|scl_ena~0_combout\);

-- Location: LCFF_X30_Y26_N27
\I2C_MASTER_MAP|scl_ena\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|scl_ena~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|scl_ena~regout\);

-- Location: LCCOMB_X30_Y26_N20
\I2C_MASTER_MAP|scl~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|scl~1_combout\ = (\I2C_MASTER_MAP|scl_clk~regout\) # (!\I2C_MASTER_MAP|scl_ena~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C_MASTER_MAP|scl_clk~regout\,
	datad => \I2C_MASTER_MAP|scl_ena~regout\,
	combout => \I2C_MASTER_MAP|scl~1_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y21_N24
\out_i2c[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \out_i2c[0]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \out_i2c[0]~reg0feeder_combout\);

-- Location: LCCOMB_X31_Y22_N18
\I2C_MASTER_MAP|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector0~0_combout\ = ((!\I2C_MASTER_MAP|busy~regout\ & ((\I2C_MASTER_MAP|state.command~regout\) # (\I2C_MASTER_MAP|state.slv_ack1~regout\)))) # (!\I2C_MASTER_MAP|state.ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|busy~regout\,
	datab => \I2C_MASTER_MAP|state.command~regout\,
	datac => \I2C_MASTER_MAP|state.slv_ack1~regout\,
	datad => \I2C_MASTER_MAP|state.ready~regout\,
	combout => \I2C_MASTER_MAP|Selector0~0_combout\);

-- Location: LCCOMB_X31_Y22_N10
\I2C_MASTER_MAP|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I2C_MASTER_MAP|Selector0~1_combout\ = (!\I2C_MASTER_MAP|state.rd~regout\ & (!\I2C_MASTER_MAP|state.start~regout\ & (!\I2C_MASTER_MAP|state.wr~regout\ & !\I2C_MASTER_MAP|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_MASTER_MAP|state.rd~regout\,
	datab => \I2C_MASTER_MAP|state.start~regout\,
	datac => \I2C_MASTER_MAP|state.wr~regout\,
	datad => \I2C_MASTER_MAP|Selector0~0_combout\,
	combout => \I2C_MASTER_MAP|Selector0~1_combout\);

-- Location: LCFF_X31_Y22_N11
\I2C_MASTER_MAP|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \I2C_MASTER_MAP|Selector0~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \I2C_MASTER_MAP|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2C_MASTER_MAP|busy~regout\);

-- Location: LCCOMB_X31_Y22_N20
\busy_prev~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \busy_prev~0_combout\ = !\I2C_MASTER_MAP|busy~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C_MASTER_MAP|busy~regout\,
	combout => \busy_prev~0_combout\);

-- Location: LCFF_X31_Y22_N25
busy_prev : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \busy_prev~0_combout\,
	sload => VCC,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \busy_prev~regout\);

-- Location: LCCOMB_X31_Y22_N24
\i2c_buss~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2c_buss~0_combout\ = (!\busy_prev~regout\ & !\I2C_MASTER_MAP|busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \busy_prev~regout\,
	datad => \I2C_MASTER_MAP|busy~regout\,
	combout => \i2c_buss~0_combout\);

-- Location: LCCOMB_X30_Y22_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i2c_buss:busy_cnt[1]~regout\ & (!\Add0~1\)) # (!\i2c_buss:busy_cnt[1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\i2c_buss:busy_cnt[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X30_Y22_N3
\i2c_buss:busy_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[1]~regout\);

-- Location: LCCOMB_X30_Y22_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\i2c_buss:busy_cnt[2]~regout\ & (\Add0~3\ $ (GND))) # (!\i2c_buss:busy_cnt[2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\i2c_buss:busy_cnt[2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X30_Y22_N5
\i2c_buss:busy_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[2]~regout\);

-- Location: LCCOMB_X30_Y22_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\i2c_buss:busy_cnt[3]~regout\ & (!\Add0~5\)) # (!\i2c_buss:busy_cnt[3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\i2c_buss:busy_cnt[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X31_Y22_N12
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~0_combout\ & (!\Add0~6_combout\ & (!\Add0~4_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y22_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\i2c_buss:busy_cnt[4]~regout\ & (\Add0~7\ $ (GND))) # (!\i2c_buss:busy_cnt[4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\i2c_buss:busy_cnt[4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCFF_X30_Y22_N9
\i2c_buss:busy_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[4]~regout\);

-- Location: LCCOMB_X30_Y22_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\i2c_buss:busy_cnt[7]~regout\ & (!\Add0~13\)) # (!\i2c_buss:busy_cnt[7]~regout\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\i2c_buss:busy_cnt[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[7]~regout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCFF_X30_Y22_N15
\i2c_buss:busy_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[7]~regout\);

-- Location: LCCOMB_X30_Y22_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\i2c_buss:busy_cnt[8]~regout\ & (\Add0~15\ $ (GND))) # (!\i2c_buss:busy_cnt[8]~regout\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\i2c_buss:busy_cnt[8]~regout\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[8]~regout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCFF_X30_Y22_N23
\i2c_buss:busy_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[11]~regout\);

-- Location: LCCOMB_X30_Y22_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\i2c_buss:busy_cnt[9]~regout\ & (!\Add0~17\)) # (!\i2c_buss:busy_cnt[9]~regout\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\i2c_buss:busy_cnt[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[9]~regout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X30_Y22_N19
\i2c_buss:busy_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[9]~regout\);

-- Location: LCCOMB_X30_Y22_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\i2c_buss:busy_cnt[11]~regout\ & (!\Add0~21\)) # (!\i2c_buss:busy_cnt[11]~regout\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\i2c_buss:busy_cnt[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[11]~regout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X31_Y22_N16
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~20_combout\ & (!\Add0~16_combout\ & (!\Add0~22_combout\ & !\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~18_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCFF_X30_Y22_N27
\i2c_buss:busy_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~26_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[13]~regout\);

-- Location: LCCOMB_X30_Y22_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\i2c_buss:busy_cnt[12]~regout\ & (\Add0~23\ $ (GND))) # (!\i2c_buss:busy_cnt[12]~regout\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\i2c_buss:busy_cnt[12]~regout\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[12]~regout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X30_Y22_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\i2c_buss:busy_cnt[13]~regout\ & (!\Add0~25\)) # (!\i2c_buss:busy_cnt[13]~regout\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\i2c_buss:busy_cnt[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[13]~regout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCFF_X30_Y22_N29
\i2c_buss:busy_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[14]~regout\);

-- Location: LCCOMB_X30_Y22_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\i2c_buss:busy_cnt[14]~regout\ & (\Add0~27\ $ (GND))) # (!\i2c_buss:busy_cnt[14]~regout\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\i2c_buss:busy_cnt[14]~regout\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[14]~regout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X31_Y22_N22
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~30_combout\ & (!\Add0~26_combout\ & (!\Add0~24_combout\ & !\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~28_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y21_N2
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y22_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\i2c_buss:busy_cnt[15]~regout\ & (!\Add0~29\)) # (!\i2c_buss:busy_cnt[15]~regout\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\i2c_buss:busy_cnt[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[15]~regout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCFF_X30_Y22_N31
\i2c_buss:busy_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~30_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[15]~regout\);

-- Location: LCCOMB_X30_Y21_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\i2c_buss:busy_cnt[16]~regout\ & (\Add0~31\ $ (GND))) # (!\i2c_buss:busy_cnt[16]~regout\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\i2c_buss:busy_cnt[16]~regout\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[16]~regout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCFF_X30_Y21_N1
\i2c_buss:busy_cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[16]~regout\);

-- Location: LCCOMB_X30_Y21_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\i2c_buss:busy_cnt[17]~regout\ & (!\Add0~33\)) # (!\i2c_buss:busy_cnt[17]~regout\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\i2c_buss:busy_cnt[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[17]~regout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCFF_X30_Y21_N3
\i2c_buss:busy_cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[17]~regout\);

-- Location: LCCOMB_X30_Y21_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\i2c_buss:busy_cnt[18]~regout\ & (\Add0~35\ $ (GND))) # (!\i2c_buss:busy_cnt[18]~regout\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\i2c_buss:busy_cnt[18]~regout\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[18]~regout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCFF_X30_Y21_N5
\i2c_buss:busy_cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~36_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[18]~regout\);

-- Location: LCCOMB_X30_Y21_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\i2c_buss:busy_cnt[19]~regout\ & (!\Add0~37\)) # (!\i2c_buss:busy_cnt[19]~regout\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\i2c_buss:busy_cnt[19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[19]~regout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X30_Y21_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\i2c_buss:busy_cnt[20]~regout\ & (\Add0~39\ $ (GND))) # (!\i2c_buss:busy_cnt[20]~regout\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\i2c_buss:busy_cnt[20]~regout\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[20]~regout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCFF_X30_Y21_N9
\i2c_buss:busy_cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~40_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[20]~regout\);

-- Location: LCCOMB_X30_Y21_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\i2c_buss:busy_cnt[21]~regout\ & (!\Add0~41\)) # (!\i2c_buss:busy_cnt[21]~regout\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\i2c_buss:busy_cnt[21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[21]~regout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X30_Y21_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\i2c_buss:busy_cnt[22]~regout\ & (\Add0~43\ $ (GND))) # (!\i2c_buss:busy_cnt[22]~regout\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\i2c_buss:busy_cnt[22]~regout\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_buss:busy_cnt[22]~regout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X31_Y21_N20
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~32_combout\ & (!\Add0~36_combout\ & (!\Add0~38_combout\ & !\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~36_combout\,
	datac => \Add0~38_combout\,
	datad => \Add0~34_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X31_Y21_N26
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~40_combout\ & !\Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datad => \Add0~42_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y21_N16
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~46_combout\ & (!\Add0~44_combout\ & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~44_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCFF_X30_Y21_N27
\i2c_buss:busy_cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~58_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[29]~regout\);

-- Location: LCCOMB_X30_Y21_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\i2c_buss:busy_cnt[23]~regout\ & (!\Add0~45\)) # (!\i2c_buss:busy_cnt[23]~regout\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\i2c_buss:busy_cnt[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[23]~regout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCFF_X30_Y21_N15
\i2c_buss:busy_cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~46_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[23]~regout\);

-- Location: LCCOMB_X30_Y21_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\i2c_buss:busy_cnt[25]~regout\ & (!\Add0~49\)) # (!\i2c_buss:busy_cnt[25]~regout\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\i2c_buss:busy_cnt[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[25]~regout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCFF_X30_Y21_N19
\i2c_buss:busy_cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~50_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[25]~regout\);

-- Location: LCCOMB_X30_Y21_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\i2c_buss:busy_cnt[27]~regout\ & (!\Add0~53\)) # (!\i2c_buss:busy_cnt[27]~regout\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\i2c_buss:busy_cnt[27]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[27]~regout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCFF_X30_Y21_N23
\i2c_buss:busy_cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~54_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[27]~regout\);

-- Location: LCCOMB_X30_Y21_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\i2c_buss:busy_cnt[29]~regout\ & (!\Add0~57\)) # (!\i2c_buss:busy_cnt[29]~regout\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\i2c_buss:busy_cnt[29]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[29]~regout\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCFF_X30_Y21_N31
\i2c_buss:busy_cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~62_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[31]~regout\);

-- Location: LCCOMB_X30_Y21_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\i2c_buss:busy_cnt[30]~regout\ & (\Add0~59\ $ (GND))) # (!\i2c_buss:busy_cnt[30]~regout\ & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((\i2c_buss:busy_cnt[30]~regout\ & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_buss:busy_cnt[30]~regout\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCFF_X30_Y21_N29
\i2c_buss:busy_cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~60_combout\,
	ena => \reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_buss:busy_cnt[30]~regout\);

-- Location: LCCOMB_X30_Y21_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (\i2c_buss:busy_cnt[31]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2c_buss:busy_cnt[31]~regout\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X31_Y21_N0
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Add0~56_combout\ & (!\Add0~58_combout\ & (!\Add0~62_combout\ & !\Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~58_combout\,
	datac => \Add0~62_combout\,
	datad => \Add0~60_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X31_Y21_N22
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~4_combout\ & (\Equal0~7_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCFF_X31_Y21_N25
\out_i2c[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \out_i2c[0]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_i2c[0]~reg0_regout\);

-- Location: LCCOMB_X31_Y21_N14
\out_i2c[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \out_i2c[2]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \out_i2c[2]~reg0feeder_combout\);

-- Location: LCFF_X31_Y21_N15
\out_i2c[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \out_i2c[2]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_i2c[2]~reg0_regout\);

-- Location: LCCOMB_X31_Y21_N12
\out_i2c[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \out_i2c[5]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \out_i2c[5]~reg0feeder_combout\);

-- Location: LCFF_X31_Y21_N13
\out_i2c[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \out_i2c[5]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_i2c[5]~reg0_regout\);

-- Location: LCCOMB_X31_Y21_N10
\out_i2c[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \out_i2c[6]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \out_i2c[6]~reg0feeder_combout\);

-- Location: LCFF_X31_Y21_N11
\out_i2c[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \out_i2c[6]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_i2c[6]~reg0_regout\);

-- Location: LCCOMB_X31_Y21_N28
\out_i2c[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \out_i2c[7]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \out_i2c[7]~reg0feeder_combout\);

-- Location: LCFF_X31_Y21_N29
\out_i2c[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \out_i2c[7]~reg0feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_i2c[7]~reg0_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sda~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I2C_MASTER_MAP|Selector29~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => sda);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_i2c[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(0));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_i2c[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(2));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(3));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_i2c[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_i2c[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_i2c[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_i2c[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_i2c(7));
END structure;


