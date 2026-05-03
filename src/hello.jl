abstract type A end
abstract type B end

struct A1 <: A
    value::Int
end

struct B1 <: B
    value::Float64
end

process(x::A) = x.value + 1
process(x::B) = x.value * 2.0

function main()
    println("process(A1) = ", process(A1(7)))
    println("process(B1) = ", process(B1(2.5)))
end

main()
