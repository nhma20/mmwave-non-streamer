mmWave FPGA parser
============================================================================

Reads and parses data from IWR6843AOP and exposes as concurrent RAM
----------------------------------------------------------------------------

Partially derived from: https://github.com/nhma20/ultra96_mmwave_interface

### Prerequisites
- Ultra96V2 board (other FPGAs supported with slight modifications)
- IWR6843AOP mmWave radar + micro-USB cable
- PC
- Xilinx tools (Vivado, HLS, Vitis)




Tested with:
- `Ubuntu 20.04.3 LTS (host PC - R3950X+32GB+RTX2070Super)`
- `Vivado / Vitis / Vitis HLS 2020.2` (with Y2K22 bug patch)

![non_streamer](https://user-images.githubusercontent.com/76950970/160352027-58168aef-a056-4414-9218-6bcbf3366ebc.png)
