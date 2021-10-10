"""
    cb_backdoor_discrete(X, Y, U, M)

    Implements the backdoor causal bootstrapping procedure for discrete confounders.
"""
function cb_backdoor_discrete(
    X::Union{DataFrame, Matrix}, 
    Y::Union{DataFrame, Vector}, 
    U::Matrix, 
    M::Int)

    y, u  = unique(Y), unique(U)                  # Unique classes and confounders
    N, K, L = size(X,1), size(y,1), size(u,1)     # N samples, classes, confounders

    # STEP 1: Estimate P(Y,U), P(U), P(Y), and P(Y|U)
    C = [sum((Y.==y[i]) .& (U.==u[j])) for i∈1:K, j∈1:L]    # Counts
    if sum(C .== 0) >= 1
        C = C .+ 1
    end
    Pyu = C ./ sum(C)                                       # P(Y,U)
    Py, Pu = sum(Pyu, dims=2), sum(Pyu, dims=1)'            # P(Y) and P(U)
    Py_u = Pyu ./ repeat(Pu', K, 1)                         # P(Y|U)

    # Compute the number of bootstrap samples to draw per class
    Nₛ = Int.(round.(Py .* M, digits=0)); Nₛ[K] = M - sum(Nₛ[1:K-1])

    # STEP 2: For each unique level of Y
    k = 1; indices = zeros(M); Y′ = zeros(M,1);
    for i ∈ 1:K
        # STEP 3: Resample indicies 
        actual = (Y .== y[i])
        expected = map(Uᵢ -> N*Py_u[i, findall(x-> x == Uᵢ, u)[1]], U)
        w = (actual ./ expected) |> vec                                 # Weights
        w = w ./ sum(w)                                                 # Ensure normalization
        indices[k:k+Nₛ[i]-1] = rand(Categorical(w), Nₛ[i])               # New indices
        Y′[k:k+Nₛ[i]-1] .= y[i]                                          # New targets
        k = k+Nₛ[i]
    end
    indices = vec(Int.(indices))
    X′ = X[indices,:]; U′ = U[indices,:]
    return X′, Y′, U′
end