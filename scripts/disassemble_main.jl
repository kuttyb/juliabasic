using InteractiveUtils

include(joinpath(@__DIR__, "..", "src", "hello.jl"))

println("Assembly for main():")
@code_native debuginfo=:none main()

println("\nAssembly for process(A1(7)):")
@code_native debuginfo=:none process(A1(7))

println("\nAssembly for process(B1(2.5)):")
@code_native debuginfo=:none process(B1(2.5))
