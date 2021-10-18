"""
    qc_age_consistency(data, age_var)

Identifies cases where the patient's age is less than ages of onset
"""
function qc_age_consistency(data::DataFrame, age_var::Symbol)
    df = data[Not(ismissing.(data.age .- data[:, age_var])),:]
    df = df[df.age .< df[:, age_var], :]
    df = df[:, [:family_id, :person_id, :centre]]
    #df[:,"Problem"] .= missing
    if age_var == :age_of_onset 
        df[:,"Problem"] .= "Age < Age of Onset"
    elseif age_var == :onset_d
        df[:, "Problem"] .= "Age < Onset D"
    elseif age_var == :onset_m
        df[:, "Problem"] .= "Age < Onset Hypomania"
    elseif age_var == :onset_M
        df[:, "Problem"] .= "Age < Onset Mania"
    elseif age_var == :age_first_suicide_attempt
        df[:, "Problem"] .= "Age < Age at first SA"
    end
    return df
end

"""
    filter_qc_exclusions(data, qc_exclusions)

Removes the subjects whose data were flagged in qc_exclusions.
"""
function filter_qc_exclusions(data::DataFrame, qc_exclusions::DataFrame)
    for row ∈ eachrow(qc_exclusions)
        fam = data.family_id .== row[1]
        pers = data.person_id .== row[2]
        site = data.centre .== row[3]
        data = data[Not(fam .& pers .& site),:]
    end
    return data
end