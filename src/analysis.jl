function shuffle_split(X::DataFrame, Y::Vector, Z::DataFrame, p_split::Float64=0.7)
    train, test = partition(eachindex(Y), p_split, stratify=Y, shuffle=true)
    Xtr, Ytr, Ztr = X[train,:], coerce(Y[train], Finite), Z[train,:]
    Xte, Yte, Zte = X[test,:], coerce(Y[test], Finite), Z[test,:]
    return Xtr, Ytr, Ztr, Xte, Yte, Zte
end