--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon Mar 28 09:43:07 2022
--Host        : nm running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target mmwave_streamer_wrapper.bd
--Design      : mmwave_streamer_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mmwave_streamer_wrapper is
  port (
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    i_RX_Serial : in STD_LOGIC;
    point_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst_n : in STD_LOGIC
  );
end mmwave_streamer_wrapper;

architecture STRUCTURE of mmwave_streamer_wrapper is
  component mmwave_streamer is
  port (
    rst_n : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    point_addr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component mmwave_streamer;
begin
mmwave_streamer_i: component mmwave_streamer
     port map (
      ce => ce,
      clk => clk,
      data_out(127 downto 0) => data_out(127 downto 0),
      i_RX_Serial => i_RX_Serial,
      point_addr(4 downto 0) => point_addr(4 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
