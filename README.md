

# Laplace Toolbox

## Project Scope

This project is a MATLAB-based Laplace and Differential Equation Toolbox designed to assist students and engineers in solving, visualizing, and interpreting various mathematical problems related to system dynamics and control theory. It offers a user-friendly console interface that allows users to:

- Solve mass-spring-damper systems
- Analyze RLC electrical circuits
- Solve ordinary differential equations (ODEs) including Initial Value Problems (IVPs)
- Analyze control system transfer functions
- Automatically generate 3D system diagrams before plotting responses

The project provides a semi-automated way to bridge theoretical Laplace transform concepts with visual and symbolic analysis, making it ideal for educational and practical use.

## Methodologies

The toolbox is built entirely in MATLAB and utilizes:

- **Symbolic Math Toolbox** for solving and manipulating differential equations.
- **Laplace and Inverse Laplace transforms** to move between the time domain and frequency domain representations.
- **Graphical visualizations** using `plot3`, `surf`, and `fplot` to enhance the user's intuitive understanding of dynamic systems.
- **Input parsing and dynamic condition handling** to allow users to solve both general differential equations and initial value problems through a flexible interface.
- **Structured modularity**: distinct cases handle different system types (mechanical, electrical, control), ensuring clarity and extensibility.

Special techniques:
- Automatic substitution of derivative notation (`Dy`, `D2y`) into full symbolic derivatives using `diff` and `subs`.
- Animated pauses to sequentially introduce 3D system visualizations before showing final solution plots.

## Findings

- Mass-spring-damper systems were successfully modeled and solved, showing natural and damped oscillatory behavior depending on user-defined parameters.
- RLC circuits were modeled and their time-domain responses captured based on step voltage inputs, accurately reflecting theoretical first-order and second-order behavior.
- General differential equations and initial value problems were solved accurately, including higher-order derivatives through symbolic expansion.
- Control systems were visualized as block diagrams in 3D and their closed-loop step responses were successfully generated.

Usability findings:
- Adding a short 3D visualization significantly enhanced user engagement and understanding.
- Allowing flexible initial condition entry increased the range of solvable problems without additional user scripting.

## Conclusions

This Laplace Toolbox serves as a robust educational and engineering resource, effectively combining symbolic computation and graphical visualization. It simplifies complex system analysis and demonstrates the real-world behaviors of mathematical models, supporting better intuition and faster problem solving.

Future expansions could include:
- Support for partial fraction decomposition visualization
- Animated time-domain system simulations
- Automatic classification of system damping based on parameter input

Overall, this project demonstrates the strong integration of symbolic mathematics, engineering system modeling, and educational-focused visualization within MATLAB.

## How to Run

1. Open MATLAB.
2. Navigate to the project directory.
3. Run `main.m`.
4. Follow the on-screen prompts to choose your system type and solve the desired problem.

---
> **Note:** Ensure that the Symbolic Math Toolbox is installed and available in your MATLAB environment.