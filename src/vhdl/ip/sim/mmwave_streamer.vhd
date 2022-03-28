--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon Mar 28 09:43:07 2022
--Host        : nm running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target mmwave_streamer.bd
--Design      : mmwave_streamer
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_0_imp_1GALSVT is
  port (
    clk : in STD_LOGIC;
    i_RX_Serial_0 : in STD_LOGIC;
    i_ce_0 : in STD_LOGIC;
    i_in_0 : in STD_LOGIC;
    i_point_addr_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_data_out_0 : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
end hier_0_imp_1GALSVT;

architecture STRUCTURE of hier_0_imp_1GALSVT is
  component mmwave_streamer_NOT_gate_0_0 is
  port (
    i_in : in STD_LOGIC;
    o_out : out STD_LOGIC
  );
  end component mmwave_streamer_NOT_gate_0_0;
  component mmwave_streamer_points_RAM_0_0 is
  port (
    i_Clk : in STD_LOGIC;
    i_Rst : in STD_LOGIC;
    i_data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    i_point_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    i_set_and_rdy : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_ce : in STD_LOGIC;
    o_data_out : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component mmwave_streamer_points_RAM_0_0;
  component mmwave_streamer_UART_RX_0_0 is
  port (
    i_Clk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component mmwave_streamer_UART_RX_0_0;
  component mmwave_streamer_data_parser_0_0 is
  port (
    i_RX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_Clk : in STD_LOGIC;
    i_Ena : in STD_LOGIC;
    i_Rst : in STD_LOGIC;
    o_data_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    o_set_and_rdy : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component mmwave_streamer_data_parser_0_0;
  signal NOT_gate_0_o_out : STD_LOGIC;
  signal UART_RX_0_o_RX_Byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RX_0_o_RX_DV : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal data_parser_0_o_data_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal data_parser_0_o_set_and_rdy : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i_RX_Serial_0_1 : STD_LOGIC;
  signal i_ce_0_1 : STD_LOGIC;
  signal i_in_0_1 : STD_LOGIC;
  signal i_point_addr_0_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal points_RAM_0_o_data_out : STD_LOGIC_VECTOR ( 127 downto 0 );
begin
  clk_0_1 <= clk;
  i_RX_Serial_0_1 <= i_RX_Serial_0;
  i_ce_0_1 <= i_ce_0;
  i_in_0_1 <= i_in_0;
  i_point_addr_0_1(4 downto 0) <= i_point_addr_0(4 downto 0);
  o_data_out_0(127 downto 0) <= points_RAM_0_o_data_out(127 downto 0);
NOT_gate_0: component mmwave_streamer_NOT_gate_0_0
     port map (
      i_in => i_in_0_1,
      o_out => NOT_gate_0_o_out
    );
UART_RX_0: component mmwave_streamer_UART_RX_0_0
     port map (
      i_Clk => clk_0_1,
      i_RX_Serial => i_RX_Serial_0_1,
      o_RX_Byte(7 downto 0) => UART_RX_0_o_RX_Byte(7 downto 0),
      o_RX_DV => UART_RX_0_o_RX_DV
    );
data_parser_0: component mmwave_streamer_data_parser_0_0
     port map (
      i_Clk => clk_0_1,
      i_Ena => UART_RX_0_o_RX_DV,
      i_RX_Byte(7 downto 0) => UART_RX_0_o_RX_Byte(7 downto 0),
      i_Rst => NOT_gate_0_o_out,
      o_data_out(127 downto 0) => data_parser_0_o_data_out(127 downto 0),
      o_set_and_rdy(1 downto 0) => data_parser_0_o_set_and_rdy(1 downto 0)
    );
points_RAM_0: component mmwave_streamer_points_RAM_0_0
     port map (
      i_Clk => clk_0_1,
      i_Rst => NOT_gate_0_o_out,
      i_ce => i_ce_0_1,
      i_data_in(127 downto 0) => data_parser_0_o_data_out(127 downto 0),
      i_point_addr(4 downto 0) => i_point_addr_0_1(4 downto 0),
      i_set_and_rdy(1 downto 0) => data_parser_0_o_set_and_rdy(1 downto 0),
      o_data_out(127 downto 0) => points_RAM_0_o_data_out(127 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mmwave_streamer is
  port (
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    i_RX_Serial : in STD_LOGIC;
    point_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of mmwave_streamer : entity is "mmwave_streamer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mmwave_streamer,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of mmwave_streamer : entity is "mmwave_streamer.hwdef";
end mmwave_streamer;

architecture STRUCTURE of mmwave_streamer is
  signal clk_0_1 : STD_LOGIC;
  signal hier_0_o_data_out_0 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal i_RX_Serial_0_1 : STD_LOGIC;
  signal i_ce_0_1 : STD_LOGIC;
  signal i_in_0_1 : STD_LOGIC;
  signal i_point_addr_0_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst_n, CLK_DOMAIN mmwave_streamer_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  clk_0_1 <= clk;
  data_out(127 downto 0) <= hier_0_o_data_out_0(127 downto 0);
  i_RX_Serial_0_1 <= i_RX_Serial;
  i_ce_0_1 <= ce;
  i_in_0_1 <= rst_n;
  i_point_addr_0_1(4 downto 0) <= point_addr(4 downto 0);
hier_0: entity work.hier_0_imp_1GALSVT
     port map (
      clk => clk_0_1,
      i_RX_Serial_0 => i_RX_Serial_0_1,
      i_ce_0 => i_ce_0_1,
      i_in_0 => i_in_0_1,
      i_point_addr_0(4 downto 0) => i_point_addr_0_1(4 downto 0),
      o_data_out_0(127 downto 0) => hier_0_o_data_out_0(127 downto 0)
    );
end STRUCTURE;
