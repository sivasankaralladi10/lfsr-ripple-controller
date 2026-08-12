## Project Overview

This project presents the design and simulation of a 4-bit LFSR-based Ripple Controller with a Decoder using Verilog HDL.

The design consists of:
- D flip-flops
- XOR feedback logic
- 4-bit LFSR
- Decoder
- Ripple Controller
- Top-level integration

The LFSR generates a pseudo-random sequence, the decoder converts LFSR states into binary values, and the ripple controller detects the terminal state and generates a ripple signal.

The design was functionally verified using Cadence Xcelium/SimVision and synthesized using Cadence Genus.

## Objective

To develop a compact and efficient VLSI-oriented digital architecture using an LFSR, decoder, and ripple controller while gaining practical experience in Verilog HDL, functional simulation, and RTL synthesis.
## Tools & Technologies

- Verilog HDL
- Cadence Xcelium
- Cadence SimVision
- Cadence Genus
- Digital Logic Design
- RTL Design
- Functional Simulation
- RTL Synthesis

## Project Structure

```text
src/
├── dff.v
├── lfsr.v
├── decoder.v
├── ripple_controller.v
└── top.v

testbench/
└── tb_lfsr.v

simulation/
├── README.md
└── waveform.png
