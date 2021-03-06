
################################################################
# This is a generated script based on design: mmwave_streamer
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source mmwave_streamer_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# NOT_gate, UART_RX, data_parser, points_RAM

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu3eg-sbva484-1-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name mmwave_streamer

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: hier_0
proc create_hier_cell_hier_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_hier_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I i_RX_Serial_0
  create_bd_pin -dir I i_ce_0
  create_bd_pin -dir I i_in_0
  create_bd_pin -dir I -from 4 -to 0 i_point_addr_0
  create_bd_pin -dir O -from 127 -to 0 o_data_out_0

  # Create instance: NOT_gate_0, and set properties
  set block_name NOT_gate
  set block_cell_name NOT_gate_0
  if { [catch {set NOT_gate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $NOT_gate_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: UART_RX_0, and set properties
  set block_name UART_RX
  set block_cell_name UART_RX_0
  if { [catch {set UART_RX_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UART_RX_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_parser_0, and set properties
  set block_name data_parser
  set block_cell_name data_parser_0
  if { [catch {set data_parser_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_parser_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: points_RAM_0, and set properties
  set block_name points_RAM
  set block_cell_name points_RAM_0
  if { [catch {set points_RAM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $points_RAM_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net NOT_gate_0_o_out [get_bd_pins NOT_gate_0/o_out] [get_bd_pins data_parser_0/i_Rst] [get_bd_pins points_RAM_0/i_Rst]
  connect_bd_net -net UART_RX_0_o_RX_Byte [get_bd_pins UART_RX_0/o_RX_Byte] [get_bd_pins data_parser_0/i_RX_Byte]
  connect_bd_net -net UART_RX_0_o_RX_DV [get_bd_pins UART_RX_0/o_RX_DV] [get_bd_pins data_parser_0/i_Ena]
  connect_bd_net -net clk_0_1 [get_bd_pins clk] [get_bd_pins UART_RX_0/i_Clk] [get_bd_pins data_parser_0/i_Clk] [get_bd_pins points_RAM_0/i_Clk]
  connect_bd_net -net data_parser_0_o_data_out [get_bd_pins data_parser_0/o_data_out] [get_bd_pins points_RAM_0/i_data_in]
  connect_bd_net -net data_parser_0_o_set_and_rdy [get_bd_pins data_parser_0/o_set_and_rdy] [get_bd_pins points_RAM_0/i_set_and_rdy]
  connect_bd_net -net i_RX_Serial_0_1 [get_bd_pins i_RX_Serial_0] [get_bd_pins UART_RX_0/i_RX_Serial]
  connect_bd_net -net i_ce_0_1 [get_bd_pins i_ce_0] [get_bd_pins points_RAM_0/i_ce]
  connect_bd_net -net i_in_0_1 [get_bd_pins i_in_0] [get_bd_pins NOT_gate_0/i_in]
  connect_bd_net -net i_point_addr_0_1 [get_bd_pins i_point_addr_0] [get_bd_pins points_RAM_0/i_point_addr]
  connect_bd_net -net points_RAM_0_o_data_out [get_bd_pins o_data_out_0] [get_bd_pins points_RAM_0/o_data_out]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ce [ create_bd_port -dir I ce ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {} \
 ] $clk
  set data_out [ create_bd_port -dir O -from 127 -to 0 data_out ]
  set i_RX_Serial [ create_bd_port -dir I i_RX_Serial ]
  set point_addr [ create_bd_port -dir I -from 4 -to 0 point_addr ]
  set rst_n [ create_bd_port -dir I rst_n ]

  # Create instance: hier_0
  create_hier_cell_hier_0 [current_bd_instance .] hier_0

  # Create port connections
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins hier_0/clk]
  connect_bd_net -net hier_0_o_data_out_0 [get_bd_ports data_out] [get_bd_pins hier_0/o_data_out_0]
  connect_bd_net -net i_RX_Serial_0_1 [get_bd_ports i_RX_Serial] [get_bd_pins hier_0/i_RX_Serial_0]
  connect_bd_net -net i_ce_0_1 [get_bd_ports ce] [get_bd_pins hier_0/i_ce_0]
  connect_bd_net -net i_in_0_1 [get_bd_ports rst_n] [get_bd_pins hier_0/i_in_0]
  connect_bd_net -net i_point_addr_0_1 [get_bd_ports point_addr] [get_bd_pins hier_0/i_point_addr_0]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


