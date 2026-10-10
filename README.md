# 8-Bit Arithmetic Logic Unit (ALU)

A combinational 8-bit ALU implemented in Verilog. It performs arithmetic, logical, shift, and comparison operations selected by a 4-bit command input, with an output-enable control.

## Features
- Arithmetic operations: addition, subtraction, multiplication, division, increment, and decrement
- Bitwise AND, OR, XOR, and NOT operations
- Left and right shift operations
- Comparison operations selected through the command input
- Output-enable control and protection against division by zero

## Tools & Technologies
- Verilog HDL
- Icarus Verilog for command-line simulation (or ModelSim/QuestaSim)
- Testbenches for functional verification

## Project Structure
- `alu.v` – ALU RTL implementation
- `alu_tb.v` – testbench

## How to Run
1. Install a Verilog simulator such as [Icarus Verilog](https://steveicarus.github.io/iverilog/) or use ModelSim/QuestaSim.
2. Open a terminal in this project directory.
3. Run the following command(s):

```bash
iverilog -o alu_sim alu.v alu_tb.v
vvp alu_sim
```

4. Review the simulator output. To inspect waveforms, add `$dumpfile` / `$dumpvars` to the testbench and open the generated VCD file in GTKWave, or configure waveform viewing in ModelSim/QuestaSim.

## Results
- Simulation is driven by the included testbench files.
- Add screenshots of simulation output or waveforms here after running the testbench.
- Verify the results against the expected behavior for each input combination.

## Author
Shreyash Bendke – [LinkedIn](https://www.linkedin.com/in/shreyash-bendke-422b72254/)
