#!/usr/local/bin/julia16
using Pkg

path = isempty(ARGS) ? "$VERSION.so" : ARGS[1]

packages = """
Distributions
Parameters
ProgressMeter
Sobol
SplitApplyCombine
DataStructures
Optim
JSON
StatsFuns
CSV
DataFrames
DataFramesMeta
Printf
StatsBase
StatsPlots
AxisKeys
"""

Pkg.add(url="https://github.com/BioTurboNick/AbbreviatedStackTraces.jl")

Pkg.add(["PackageCompiler"; split(packages)])
Pkg.update(["PackageCompiler"; split(packages)])
using PackageCompiler
@time create_sysimage(Symbol.(split(packages)), sysimage_path=path, precompile_execution_file="precompile.jl")
