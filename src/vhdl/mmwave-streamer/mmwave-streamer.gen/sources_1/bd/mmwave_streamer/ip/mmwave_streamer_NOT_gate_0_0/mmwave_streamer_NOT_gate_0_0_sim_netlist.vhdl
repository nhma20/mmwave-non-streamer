-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Feb 24 10:32:26 2022
-- Host        : nm running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/nm/mmwave-fpga-streamer/src/vhdl/mmwave-streamer/mmwave-streamer.gen/sources_1/bd/mmwave_streamer/ip/mmwave_streamer_NOT_gate_0_0/mmwave_streamer_NOT_gate_0_0_sim_netlist.vhdl
-- Design      : mmwave_streamer_NOT_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mmwave_streamer_NOT_gate_0_0 is
  port (
    i_in : in STD_LOGIC;
    o_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mmwave_streamer_NOT_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mmwave_streamer_NOT_gate_0_0 : entity is "mmwave_streamer_NOT_gate_0_0,NOT_gate,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mmwave_streamer_NOT_gate_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mmwave_streamer_NOT_gate_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of mmwave_streamer_NOT_gate_0_0 : entity is "NOT_gate,Vivado 2020.2";
end mmwave_streamer_NOT_gate_0_0;

architecture STRUCTURE of mmwave_streamer_NOT_gate_0_0 is
begin
o_out_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_in,
      O => o_out
    );
end STRUCTURE;
