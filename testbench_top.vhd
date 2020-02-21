library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- library i2c_control;
library std;
use std.textio.all;

entity testbench_top is
end entity testbench_top;

architecture bhv of testbench_top is 

-- Input signals to DUT
	signal clk : std_logic;
	signal reset_n : std_logic;
	signal sd : inout std_logic;
	signal scl : inout std_logic;
-- Output signals from DUT
	signal out_i2c: std_logic_VECTOR(7 downto 0);


	
procedure pr_write(v_input_str : in string) is
	variable v_line : line;
	begin
		write(v_line,v_input_str);
		writeline(OUTPUT, v_line);
end procedure pr_write;


component i2c_control is
port(	clk   			: in std_logic;
		reset_n			: in std_logic := '1';
		out_i2c   		: out std_LOGIC_VECTOR( 7 downto 0);
		sda				: inout std_logic;
		scl				: inout std_logic
		);
end component i2c_control;


begin
buss : i2c_control
	port map(
		
		clk  => clk;
		reset_n	=> reset_n;
		out_i2c   => out_i2c;
		sda		=> sda;
		scl		=> scl
		
	);

	

   p_generate_clock : process
   begin
	    kill_clock <='0';
      clock_50 <= '0';
      wait for 10 ns;
      while ( kill_clock = '0' ) loop
         clock_50 <= not clock_50;
         wait for 10 ns;
      end loop;
      -- wait forever;
      wait;
   end process p_generate_clock;
	
	
	
	
p_generate_reset : process
begin
--set reset active
	
	reset_n <='0';
	wait for 123 ns;
--set reset inactiv
	
	reset_n <='1';
-- wait forever
	wait;
end process p_generate_reset;

	clk_pross : process
	begin
	wait until reset_n= '1';
	wait for 100 ns;
	sda<= "1";
	scl <= "1";
	wait for 500 ns;
	wait until clock_50 = '1';
	wait for 100ns;
	if (out_i2c = "11100101") then
	pr_write ("Test okej");
	else
	pr_write("funkar ej ");
	end if;
	
	
end process;
end architecture bhv;