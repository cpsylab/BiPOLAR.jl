function linear_classifier(X, Y)
    pipe = @pipeline FeatureSelector FillImputer Standardizer OneHotEncoder LogisticClassifier(max_iter=1000)
    return machine(pipe, X, Y)
end

function rf_classifier(X, Y)
    pipe = @pipeline FeatureSelector FillImputer Standardizer OneHotEncoder RandomForestClassifier(n_estimators=100)
    return machine(pipe, X, Y)
end
