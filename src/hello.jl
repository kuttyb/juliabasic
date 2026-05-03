abstract type A end
abstract type B end

struct A1 <: A
    value::Int
end

struct B1 <: B
    value::Float64
end

function process(x::A)
    x.value + 1
end

function process(x::B)
    x.value * 2.0
end

const a = A1(7)
const b = B1(2.5)
println("process(A1) = ", process(a))
println("process(B1) = ", process(b))
