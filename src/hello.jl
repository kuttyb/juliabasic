function square(x::Integer)
    x * x
end

function square(x::AbstractFloat)
    x + x
end

const i = 7
const f = 2.5
println("square(Integer) = ", square(i))
println("square(Float) = ", square(f))
