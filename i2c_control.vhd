library work;
library ieee;
	use ieee.std_logic_1164.all;

entity i2c_control is
port(	clk   			: in std_logic;
		reset_n			: in std_logic := '1';
		out_i2c   		: out std_LOGIC_VECTOR( 7 downto 0);
		sda				: inout std_logic;
		scl				: inout std_logic
		);
end entity i2c_control;

architecture i2c_control_rtl of i2c_control is
	component i2c_master is
	PORT(
		clk       : IN     STD_LOGIC;                    --system clock
		reset_n   : IN     STD_LOGIC;                    --active low reset
		ena       : IN     STD_LOGIC;                    --latch in command
		addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
		rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
		data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
		busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
		data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
		ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
		sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
		scl       : INOUT  STD_LOGIC);
	end component;
	
	signal busy_prev : std_logic := '0';
	--signal data : std_logic_vector (15 downto 0);
	
	signal i2c_addr : std_logic_vector(6 downto 0);
	signal i2c_data_wr : std_logic_vector(7 downto 0);
	signal i2c_rw : std_logic;
	signal i2c_busy : std_logic := '0';
	signal i2c_ena : std_logic;
	signal i2c_data_rd : std_logic_vector (7 downto 0);
	signal i2c_ack_error : std_logic;
	
	-- signal sda_out, sda_in : std_logic;
begin

	I2C_MASTER_MAP : i2c_master port map (
		clk => clk,
		reset_n => reset_n,
		ena => i2c_ena,
		addr => i2c_addr,
		rw => i2c_rw,
		data_wr => i2c_data_wr,
		busy => i2c_busy,
		data_rd => i2c_data_rd,
		ack_error => i2c_ack_error,
		sda => sda,
		scl => scl);

	-- i2c buss kommunication

	i2c_buss : process(reset_n, clk)
		variable busy_cnt : integer := 0;
	begin
		if reset_n = '0' then
		out_i2c <="00000000";
		elsif rising_edge(clk) then
			busy_prev <= i2c_busy;
			if(busy_prev = '0' and i2c_busy = '1') then
				busy_cnt := busy_cnt + 1;
			end if;
			case busy_cnt is
				when 0 =>
					i2c_ena <= '1';
					i2c_addr <= "1000000";  -- 0x40 adress till 7bit base slave
					i2c_rw <= '0';
					i2c_data_wr <= "11100101"; -- 0xE5 port för "humidity, hold master mode"
					out_i2c<= i2c_data_wr;
					

				when OTHERS => NULL;
			end case;
		end if;
	end process i2c_buss;

end architecture;
