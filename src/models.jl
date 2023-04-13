LogisticClassifier = @load LogisticClassifier pkg="MLJScikitLearnInterface"
RandomForestClassifier = @load RandomForestClassifier pkg="MLJScikitLearnInterface"


"""
    linear_classifier(X, Y)

    Returns a pipeline for the linear classifier used in our analyses
"""
function linear_classifier(X, Y)
    pipe = Pipeline(FeatureSelector, FillImputer, Standardizer, OneHotEncoder, LogisticClassifier(max_iter=1000))
    return machine(pipe, remove_lowvar(X), Y)
end

"""
    rf_classifier(X, Y)

    Returns a pipeline for the random forest classifier used in our analyses
"""
function rf_classifier(X, Y)
    pipe = Pipeline(FeatureSelector, FillImputer, Standardizer, OneHotEncoder, RandomForestClassifier(n_estimators=100))
    return machine(pipe, remove_lowvar(X), Y)
end
