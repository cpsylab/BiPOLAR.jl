"""
    shuffle_split(X, Y, Z, p_split)

    Creates a stratified partition with p_train of data in the test set.
    Stratification occurs along feature Y.
"""
function shuffle_split(X::DataFrame, Y::Vector, Z::DataFrame, p_split::Float64=0.7)
    train, test = partition(eachindex(Y), p_split, stratify=Y, shuffle=true)
    Xtr, Ytr, Ztr = X[train,:], coerce(Y[train], Finite), Z[train,:]
    Xte, Yte, Zte = X[test,:], coerce(Y[test], Finite), Z[test,:]
    return Xtr, Ytr, Ztr, Xte, Yte, Zte
end

""" 
    split_prune_bootstrap(X, Y, Z, train_p, prune_p, bootstrap_samples)

    Runs the initial shuffle-splitting (with train_p proportion in the training set), followed by 
    pruning of variables with more than prune_p proportion of data missing, and finally followed by 
    backdoor causal bootstrap resampling on the discrete confounder Z.
"""
function split_prune_bootstrap(
    X::DataFrame, 
    Y::Vector{Float64}, 
    Z::Union{DataFrame, Nothing}, 
    train_p::Float64=0.8, 
    prune_p::Float64=0.6, 
    bootstrap_samples::Int=1000)

    Xₜᵣ, Yₜᵣ, Zₜᵣ, Xₜₑ, Yₜₑ, Zₜₑ = shuffle_split(X, Y, Z, train_p)
    Xₜᵣ = select(Xₜᵣ, prune_missingness(Xₜᵣ, prune_p))
    if bootstrap_samples > 0
        Xₜᵣ, Yₜᵣ, Zₜᵣ = causal_bootstrapping(Xₜᵣ, Yₜᵣ, Zₜᵣ, bootstrap_samples)
    end 
    return Xₜᵣ, Yₜᵣ, Zₜᵣ, Xₜₑ, Yₜₑ, Zₜₑ
end