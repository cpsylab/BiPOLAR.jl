"""
    renyi(p, q)

    Computes the Renyi heterogeneity of order q for the vector p
"""
function renyi(p::Vector{Float64}, q::Union{Float64, Int64}=1)
    p = filter(x -> x > 0, p)
    p = p ./ sum(p)
    if q == 0
        Π = length(p)
    elseif q == 1
        Π = exp.(-p'*log.(p))
    elseif q == Inf 
        Π = 1/maximum(p)
    else 
        Π = sum(p.^q)^(1/(1-q))
    end
    return Π
end

"""
    renyi_pooled(P, W, q)

    Computes the pooled Renyi heterogeneity of order q for the NxM matrix P, given the N-dimensional 
    weight vector W.
"""
function renyi_pooled(P::Matrix{Float64}, W::Vector{Float64}, q::Union{Float64, Int64}=1)
    return renyi(P'*W, q)
end

"""
    renyi_within(P, W, q)

    Computes the within-sample Renyi heterogeneity of order q for the NxM matrix P, given the 
    N-dimensional weight vector W.
"""
function renyi_within(P::Matrix{Float64}, W::Vector{Float64}, q::Union{Float64, Int64}=1)
    P = P ./ repeat(sum(P, dims=2), 1, size(P)[2])  # Normalize rows
    if q == 1
        out = exp(-W'*map(p -> filter(x-> x > 0, p[:]) |> a -> a'*log.(a), eachrow(P)))
    elseif (q > 0) & (q < Inf) & (q != 1)
        Wq = W.^q 
        w = Wq ./ sum(Wq)
        p  = sum(P.^q, dims=2)[:]
        out = (w'*p)^(1/(1-q))
    end
    return out
end

"""
    renyi_between(P, W, q)

    Computes the within-sample Renyi heterogeneity of order q for the NxM matrix P, given the 
    N-dimensional weight vector W.
"""
function renyi_between(P::Matrix{Float64}, W::Vector{Float64}, q::Union{Float64, Int64}=1)
    return renyi_pooled(P,W,q)/renyi_within(P,W,q)
end