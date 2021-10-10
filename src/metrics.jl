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
