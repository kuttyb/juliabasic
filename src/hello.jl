abstract type A end
abstract type B end

include("main_helpers.jl")

struct A1 <: A
    value::Int
end

struct B1 <: B
    value::Float64
end

process(x::A) = x.value + 1
process(x::B) = x.value * 2.0

function parse_stage(values::Vector{Integer})
    output = Vector{Integer}(undef, length(values))
    for i in eachindex(values)
        output[i] = iseven(values[i]) ? values[i] : zero(Integer)
    end
    output
end

function process_stage(values::Vector{Integer})
    first_even_value = findfirst(v -> v != 0 && iseven(v), values) |>
                       (i -> i === nothing ? 0 : values[i])

    map(v -> v * first_even_value, values)
end

function summarize_stage(values::Vector{Integer})::Integer
    sum(values)
end

function run_pipeline(values::Vector{Integer})
    values |> parse_stage |> process_stage |> summarize_stage
end

function main()
    println("process(A1) = ", process(A1(7)))
    println("process(B1) = ", process(B1(2.5)))

    summary = run_pipeline([1, 2, 3, 4, 5])
    println("Pipeline summary = ", summary)
    return summary
end

