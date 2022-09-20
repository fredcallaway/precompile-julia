using CSV
using DataFrames
using DataFramesMeta
df = CSV.read("test.csv", DataFrame)
CSV.write("test.csv", df)

@chain df begin
    @rtransform :z = :a + :b
    @rsubset :z > 3
    @by(:c, :ma = sum(:a))
    # @select :ma
end

using StatsPlots
ENV["GKSwstype"] = "nul"
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
@showprogress map(1:100) do i
    i+2
end
