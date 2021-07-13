#!/usr/local/bin/julia16
using Pkg

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
Printf
StatsBase
StatsPlots
AxisKeys
"""

Pkg.add(["PackageCompiler"; split(packages)])
using PackageCompiler
@time create_sysimage(Symbol.(split(packages)), sysimage_path="sysimage.so", precompile_execution_file="precompile.jl")
