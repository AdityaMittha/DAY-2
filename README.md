🔢 Arithmetic Circuits in Verilog – Part 2
This repository contains five essential Verilog modules demonstrating fundamental arithmetic and selection logic used in digital design. These projects are beginner-friendly and ideal for anyone learning Verilog HDL or preparing for FPGA / ASIC / VLSI roles.
📦 Projects Overview
No.Project Description 6 Half Subtractor Subtracts 2-bit inputs A - B7Full SubtractorSubtracts A - B - Bin8Ripple Carry Adder (4-bit)Performs 4-bit addition using full adders 92:1 Multiplexer Selects between two 1-bit inputs 108:1 Multiplexer Selects from 8 input lines using 3-bit sel
🔧 Project Details
6️⃣ Half Subtractor

Inputs: a, b
Outputs: difference, borrow
Logic:

difference = a ^ b
borrow = (~a) & b



Show Image
7️⃣ Full Subtractor

Inputs: a, b, borrow_in
Outputs: difference, borrow_out
Logic:

difference = a ^ b ^ borrow_in
borrow_out = (~a & b) | (~a & borrow_in) | (b & borrow_in)



Show Image
8️⃣ Ripple Carry Adder (4-bit)

Inputs: 4-bit a, 4-bit b, carry-in cin
Outputs: 4-bit sum, carry-out carry
Description: Cascades four full adders to perform 4-bit binary addition

Show Image
9️⃣ 2×1 Multiplexer

Inputs: a, b, sel
Output: out
Logic: out = (sel) ? b : a

Show Image
🔟 8×1 Multiplexer

Inputs: 8-bit input in[7:0], 3-bit selector sel[2:0]
Output: out
Description: Selects one of eight input lines based on 3-bit selection signal

Show Image
🗂 Folder Structure
verilog-arithmetic-projects-part2/
├── verilog/
│   ├── half_subtractor.v
│   ├── full_subtractor.v
│   ├── ripple_carry_adder.v
│   ├── mux2x1.v
│   └── mux8x1.v
├── testbench/
│   ├── tb_half_subtractor.v
│   ├── tb_full_subtractor.v
│   ├── tb_ripple_carry_adder.v
│   ├── tb_mux2x1.v
│   └── tb_mux8x1.v
├── assets/
│   ├── half_subtractor_waveform.png
│   ├── full_subtractor_waveform.png
│   ├── ripple_carry_adder_waveform.png
│   ├── mux2x1_waveform.png
│   └── mux8x1_waveform.png
└── README.md
▶️ Simulation Instructions
You can simulate each module using any Verilog simulator such as:

Icarus Verilog (Open Source)
ModelSim (Intel/Mentor Graphics)
Vivado (Xilinx)
Quartus (Intel)

Example using Icarus Verilog:
bash# Compile the design and testbench
iverilog -o tb_half_subtractor verilog/half_subtractor.v testbench/tb_half_subtractor.v

# Run the simulation
vvp tb_half_subtractor

# View waveforms (if VCD file is generated)
gtkwave waveform.vcd
Example using ModelSim:
bash# Compile
vlog verilog/half_subtractor.v testbench/tb_half_subtractor.v

# Simulate
vsim tb_half_subtractor

# Run simulation
run -all
