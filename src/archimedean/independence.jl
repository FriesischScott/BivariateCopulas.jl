struct Independence <: ArchimedeanCopula end

"""
    φ(x::Real, _::Independence)

Generator of the Independence copula.
"""
function φ(x::Real, _::Independence)
    return exp(-x)
end

"""
    φ⁻¹(x::Real, _::Independence)

Inverse generator of the Frank copula.
"""
function φ⁻¹(x::Real, _::Independence)
    return -log(x)
end

"""
    D¹φ(x::Real, _::Independence)

First derivative of the Independence copula generator.
"""
function D¹φ(x::Real, _::Independence)
    return -exp(-x)
end

"""
    D²φ(x::Real, _::Independence)

Second derivative of the Independence copula generator.
"""
function D²φ(x::Real, _::Independence)
    return exp(-x)
end

"""
    D¹φ⁻¹(x::Real, _::Independence)

First derivative of the Independence copula inverse generator.
"""
function D¹φ⁻¹(x::Real, _::Independence)
    return -1 / x
end

function sample(_::Independence, n::Int64)
    @assert n > 0
    u1 = rand(n)
    u2 = rand(n)

    return [u1 u2]
end

function τ(_::Independence)
    return 0.0
end
