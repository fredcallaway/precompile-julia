using CSV
using DataFrames
df = CSV.read("test.csv", DataFrame)
CSV.write("test.csv", df)

using StatsPlots
display(plot(rand(5), rand(5)))

using Distributions
rand(Normal(0, 1))

using SplitApplyCombine
invert([[1,2,3], [4,5,6]])
invert([(a=1, b=2), (a=3, b=4)])

using Optim
optimize(0, 1) do x
    (x - 0.5) ^ 2
end

using AxisKeys
using ProgressMeter