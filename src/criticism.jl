""" 
    classification_report(i, yhat, y)

    Returns multiple classification metrics based on predictions yhat and 
    ground truth values y, for run i.
 """
function classification_report(i, yhat, y)
    P′ = [pdf(yhat[j], 1.0) for j ∈ 1:size(yhat)[1]]
    yₚ = [p >= 0.5 for p ∈ P′]
    out = DataFrame(
        Run = i,
        TN  = true_negative(yₚ, y),
        FP  = false_positive(yₚ, y),
        FN  = false_negative(yₚ, y),
        TP  = true_positive(yₚ, y),
        Sensitivity = sensitivity(yₚ, y),
        Specificity = specificity(yₚ, y),
        PPV = ppv(yₚ, y),
        NPV = npv(yₚ, y),
        Accuracy = accuracy(yₚ, y),
        AUC = auc(yhat, y),
        MCC = mcc(yₚ, y),
        F1  = f1score(yₚ, y),
        Brier = mean((yₚ .- float(y)).^2)
    )
    return out
end


"""
    store_classification_results(df, fold, yhat, ytrue)

    This function takes the results dataframe and adds to it a row for the 
    classification results in the current fold.
"""
function store_classification_results(df, fold, yhat, ytrue)
    return [df; classification_report(fold, yhat, coerce(ytrue, OrderedFactor))]
end


"""
    initialize_roc_plot([xlabel, ylabel, title])

Instantiates the object upon which we will plot the ROC curves
"""
function initialize_roc_plot(;
    xlabel::String="False Positive Rate", 
    ylabel::String="True Positive Rate", 
    title::String="ROC"
    )
    U = range(0, 1, step=0.1)
    return plot(U, U, c=:black, ls=:dash, label=nothing, 
                xlabel=xlabel, ylabel=ylabel, title=title)
end