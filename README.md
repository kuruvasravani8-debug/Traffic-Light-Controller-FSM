
# Traffic-Light-Controller-FSM - Project 18

## 🚦 Description
4-way Traffic Light Controller using Finite State Machine (FSM) in Verilog HDL.

This project controls traffic at a 4-way intersection (North, South, East, West) - only one direction gets GREEN at a time.

## 🔧 FSM States
- N_GREEN (00): North = GREEN, Others = RED
- E_GREEN (01): East = GREEN, Others = RED  
- S_GREEN (10): South = GREEN, Others = RED
- W_GREEN (11): West = GREEN, Others = RED

## 📁 Files
- `traffic_light.v` - Main FSM Design
- `tb_traffic_light.v` - Testbench with clock generation

## 💻 Tools Used
- Verilog HDL
- EDA Playground / ModelSim
- GitHub

## 🎯 Output
Cyclic GREEN: North -> East -> South -> West -> North ...

## 👩‍💻 Author
Sravani Kuruvasa - ECE 3rd Year - Kurnool
VLSI Enthusiast | 18+ Projects
