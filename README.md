# double_pendulum_analyzer
Chaotic motion analysis and visualization for the double pendulum system

## What it does
This Julia package analyzes and visualizes the chaotic motion of a double pendulum system. It uses numerical methods to compute the pendulum's trajectory and visualizes the results using Plots.jl.

## Installation
To use double_pendulum_analyzer, clone this repository and add it to your Julia environment using Pkg.jl:
```bash
git clone https://github.com/SamyAlderson/double_pendulum_analyzer.git
cd double_pendulum_analyzer
using Pkg; Pkg.activate("."); Pkg.add("Plots", "Documenter")
```
## Usage
To run the double pendulum analyzer, use the following command:
```julia
using double_pendulum_analyzer
double_pendulum_analyzer(double_pendulum_config)
```
See `src/config.jl` for example configurations.

## Building from source
To build double_pendulum_analyzer from source, run the following commands:
```bash
git clone https://github.com/SamyAlderson/double_pendulum_analyzer.git
cd double_pendulum_analyzer
julia --project=Project.toml build
```
## Running tests
To run the test suite, use the following command:
```bash
julia --project=Project.toml test
```
## Project structure
- `src/`: source code
  - `config.jl`: configuration module
  - `pandas.jl`: numerical methods
  - `visualize.jl`: visualization module
- `test/`: test suite
  - `test_config.jl`: test configurations
  - `test_pandas.jl`: test numerical methods
  - `test_visualize.jl`: test visualization module

## License
Copyright (c) 2026 SamyAlderson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.