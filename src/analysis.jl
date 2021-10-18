PCA = @load PCA pkg="MultivariateStats"

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
    Y::Vector, 
    Z::Union{DataFrame, Nothing}, 
    train_p::Float64=0.8, 
    prune_p::Float64=0.6, 
    bootstrap_samples::Int=1000)

    Xₜᵣ, Yₜᵣ, Zₜᵣ, Xₜₑ, Yₜₑ, Zₜₑ = shuffle_split(X, Y, Z, train_p)
    Xₜᵣ = select(Xₜᵣ, prune_missingness(Xₜᵣ, prune_p))
    if bootstrap_samples > 0
        Xₜᵣ, Yₜᵣ, Zₜᵣ = discrete_causal_bootstrapping(Xₜᵣ, Yₜᵣ, Zₜᵣ, bootstrap_samples)
    end 
    return Xₜᵣ, Yₜᵣ, Zₜᵣ, Xₜₑ, Yₜₑ, Zₜₑ
end

"""
    classification_analysis(X, Y, Z, label, n_splits, split_p, prune_p, bootstrap_samples)

    Runs a classification analysis
"""
function classification_analysis(
    model::Any, 
    X::DataFrame, 
    Y::Vector{Float64}, 
    Z::Union{DataFrame, Nothing}, 
    label::String="Classification Analysis",
    n_splits::Int=100, 
    split_p::Float64=0.5, 
    prune_p::Float64=0.6, 
    bootstrap_samples::Int=1000)

    res = DataFrame()
    roc_curves = []
    predictions = DataFrame()
    for i ∈ 1:n_splits 
        Xₜᵣ,Yₜᵣ,Zₜᵣ,Xₜₑ,Yₜₑ,Zₜₑ = split_prune_bootstrap(X, Y, Z, split_p, prune_p, bootstrap_samples)
        ℳ = model(Xₜᵣ, Yₜᵣ) |> fit!
        Y′ = predict(ℳ, Xₜₑ)

        # Store results
        res = store_classification_results(res, i, Y′, Yₜₑ)
        predictions = store_classification_predictions(predictions, i, label, Zₜₑ, Yₜₑ, Y′)
        fprs, tprs, ts = roc(Y′, coerce(Yₜₑ, OrderedFactor))
        push!(roc_curves, [fprs, tprs])
    end

    return res, predictions, roc_curves
end


"""
    pca_plot(X,U,pc_i,pc_j; palette, alpha, title, dpi)

Performs principal components analysis and plots PCs.
"""
function pca_plot(
    X::DataFrame, 
    U::Vector, 
    pc_i::Int64=1, 
    pc_j::Int64=2;
    palette::Symbol=:seaborn_bright, 
    alpha::Float64=0.5, 
    title::String="", 
    dpi::Int64=350)

    pipe = @pipeline FeatureSelector FillImputer Standardizer OneHotEncoder PCA(maxoutdim=10)
    ℳ = machine(pipe, X) |> fit!
    Z′ = ℳ(X)

    fig = plot(palette=:seaborn_bright, 
        title=title,
        xlabel=L"PC_1", 
        ylabel=L"PC_2", 
        size=(400,400))
    for u ∈ unique(U)
        fig = scatter!(
            Z′[U .== u, pc_i], 
            Z′[U .== u, pc_j], 
            alpha=0.5, label=u,
            dpi=dpi)
    end
    return fig
end