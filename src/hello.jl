function fill_squares!(out::Vector{T}, n::Int) where {T<:Integer}
    @inbounds for i in 1:n
        out[i] = i * i
    end
    return out
end

function fill_squares!(out::Vector{T}, n::Int) where {T<:AbstractFloat}
    @inbounds for i in 1:n
        out[i] = (T(i) * T(i))
    end
    return out
end

const N = 10
const squares = Vector{Int}(undef, N)
fill_squares!(squares, N)
println("squares = ", squares)
