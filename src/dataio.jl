colscitypes = Dict(
    :family_id => Union{Missing, Multiclass},
    :person_id => Union{Missing, Multiclass},
    :centre => Union{Missing, Multiclass},
    :status => Union{Missing, Multiclass},
    :dob => Union{Missing, Multiclass},
    :age => Union{Missing, MLJ.Continuous},
    :sex => Union{Missing, Multiclass},
    :assessment_date => Union{Missing, Multiclass},
    :most_recent_update => Union{Missing, Multiclass},
    :affected_status => Union{Missing, Multiclass}, 
    :diagnosis => Union{Missing, Multiclass},
    :gaf_last_assessment => Union{Missing, MLJ.Continuous},
    :marital_status => Union{Missing, Multiclass},
    :ses => Union{Missing, Multiclass}, 
    :father_ethnicity => Union{Missing, Multiclass},
    :mother_ethnicity => Union{Missing, Multiclass},
    :primary_diagnosis => Union{Missing, Multiclass},
    :age_of_onset => Union{Missing, MLJ.Continuous},
    :onset_d => Union{Missing, MLJ.Continuous},
    :onset_M => Union{Missing, MLJ.Continuous},
    :onset_m => Union{Missing, MLJ.Continuous},
    :clinical_course => Union{Missing, Multiclass},
    :lifetime_manias => Union{Missing, MLJ.Continuous},
    :lifetime_depressions => Union{Missing, MLJ.Continuous},
    :lifetime_mixed => Union{Missing, MLJ.Continuous},
    :lifetime_multiphasic => Union{Missing, MLJ.Continuous},
    :total_lifetime_episodes => Union{Missing, MLJ.Continuous},
    :polarity_first_episode => Union{Missing, Multiclass},
    :rapid_cycling => Union{Missing, Multiclass},
    :lifetime_psychosis => Union{Missing, Multiclass},
    :rapid_mood_switching => Union{Missing, Multiclass},
    :first_degree_rel_mood_do => Union{Missing, Multiclass},
    :first_degree_rel_bd => Union{Missing, Multiclass},
    :n_first_degree_rel_bd1 => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_bd2 => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_unipolar_depression => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_sza => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_scz => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_anx => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_unaffected => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_completed_suicide => Union{Missing, MLJ.Continuous},
    :n_first_degree_rel_suicide_attempt => Union{Missing, MLJ.Continuous},
    :n_second_degree_rel_completed_suicide => Union{Missing, MLJ.Continuous},
    :n_second_degree_rel_suicide_attempt => Union{Missing, MLJ.Continuous},
    :total_n_first_degree_rel => Union{Missing, MLJ.Continuous},
    :n_episodes_pre_li => Union{Missing, MLJ.Continuous},
    :n_episodes_on_li => Union{Missing, MLJ.Continuous},
    :li_response_narrow => Union{Missing, Multiclass},
    :li_a_score => Union{Missing, MLJ.Continuous},
    :li_b1_score => Union{Missing, MLJ.Continuous},
    :li_b2_score => Union{Missing, MLJ.Continuous},
    :li_b3_score => Union{Missing, MLJ.Continuous},
    :li_b4_score => Union{Missing, MLJ.Continuous},
    :li_b5_score => Union{Missing, MLJ.Continuous},
    :li_total_score => Union{Missing, MLJ.Continuous},
    :n_suicide_attempts => Union{Missing, MLJ.Continuous},
    :n_potentially_lethal_suicide_attempts => Union{Missing, MLJ.Continuous},
    :age_first_suicide_attempt => Union{Missing, MLJ.Continuous},
    :mood_polarity => Union{Missing, Multiclass},
    :lifetime_hx_suicide_ideation => Union{Missing, Multiclass},
    :suicide_ideation_related_to_mood_episode => Union{Missing, Multiclass},
    :social_anxiety => Union{Missing, Multiclass},
    :age_onset_social_anxiety => Union{Missing, MLJ.Continuous},
    :panic_disorder => Union{Missing, Multiclass},
    :age_onset_panic_disorder => Union{Missing, MLJ.Continuous},
    :generalized_anxiety => Union{Missing, Multiclass},
    :age_onset_generalized_anxiety => Union{Missing, MLJ.Continuous},
    :ocd => Union{Missing, Multiclass},
    :age_onset_ocd => Union{Missing, MLJ.Continuous},
    :substance_abuse => Union{Missing, Multiclass},
    :age_onset_substance_abuse => Union{Missing, MLJ.Continuous},
    :adhd => Union{Missing, Multiclass},
    :age_onset_adhd => Union{Missing, MLJ.Continuous},
    :learning_disability => Union{Missing, Multiclass},
    :age_onset_learning_disability => Union{Missing, MLJ.Continuous},
    :primary_insomnia => Union{Missing, Multiclass},
    :age_onset_primary_insomnia => Union{Missing, MLJ.Continuous},
    :personality_disorder => Union{Missing, Multiclass},
    :age_onset_personality_disorder => Union{Missing, MLJ.Continuous},
    :diabetes_mellitus => Union{Missing, Multiclass},
    :age_onset_diabetes_mellitus => Union{Missing, MLJ.Continuous},
    :diabetes_mellitus_type => Union{Missing, Multiclass},
    :hypertension => Union{Missing, Multiclass},
    :age_onset_hypertension => Union{Missing, MLJ.Continuous},
    :menstrual_abnormality => Union{Missing, Multiclass},
    :age_onset_menstrual_abnormality => Union{Missing, MLJ.Continuous},
    :thyroid_disease => Union{Missing, Multiclass},
    :age_onset_thyroid_disease => Union{Missing, MLJ.Continuous},
    :head_injury => Union{Missing, Multiclass},
    :age_onset_head_injury => Union{Missing, MLJ.Continuous},
    :migraine => Union{Missing, Multiclass},
    :age_onset_migraine => Union{Missing, MLJ.Continuous},
    :opcrit_source_of_rating => Union{Missing, Multiclass},
    :opcrit_time_frame => Union{Missing, Multiclass},
    :opcrit_gender => Union{Missing, Multiclass},
    :opcrit_age_of_onset => Union{Missing, MLJ.Continuous},
    :opcrit_mode_of_onset => Union{Missing, Multiclass},
    :opcrit_single => Union{Missing, Multiclass},
    :opcrit_unemployed_at_onset => Union{Missing, Multiclass},
    :opcrit_illness_duration => Union{Missing, MLJ.Continuous},
    :opcrit_poor_work_adjustment => Union{Missing, Multiclass},
    :opcrit_poor_premorbid_social_adjustment => Union{Missing, Multiclass},
    :opcrit_premorbid_personality_disorder => Union{Missing, Multiclass},
    :opcrit_alcohol_drug_abuse => Union{Missing, Multiclass},
    :opcrit_famhx_scz => Union{Missing, Multiclass},
    :opcrit_famhx_other_psychiatric_disorder => Union{Missing, Multiclass},
    :opcrit_premorbid_coarse_brain_disease => Union{Missing, Multiclass},
    :opcrit_premorbid_definite_psychosocial_stressor => Union{Missing, Multiclass},
    :opcrit_bizarre_behaviour => Union{Missing, Multiclass},
    :opcrit_catatonia => Union{Missing, Multiclass},
    :opcrit_excessive_activity => Union{Missing, Multiclass},
    :opcrit_reckless_activity => Union{Missing, Multiclass},
    :opcrit_distractibility => Union{Missing, Multiclass},
    :opcrit_reduced_need_for_sleep => Union{Missing, Multiclass},
    :opcrit_agitated_activity => Union{Missing, Multiclass},
    :opcrit_slowed_activity => Union{Missing, Multiclass},
    :opcrit_loss_energy_tiredness => Union{Missing, Multiclass},
    :opcrit_speech_difficult_to_understand => Union{Missing, Multiclass},
    :opcrit_incoherent => Union{Missing, Multiclass},
    :opcrit_positive_formal_thought_disorder => Union{Missing, Multiclass},
    :opcrit_negative_formal_thought_disorder => Union{Missing, Multiclass},
    :opcrit_pressured_speech => Union{Missing, Multiclass},
    :opcrit_thoughts_racing => Union{Missing, Multiclass},
    :opcrit_restricted_affect => Union{Missing, Multiclass},
    :opcrit_blunted_affect => Union{Missing, Multiclass},
    :opcrit_inappropriate_affect => Union{Missing, Multiclass},
    :opcrit_elevated_mood => Union{Missing, Multiclass},
    :opcrit_irritable_mood => Union{Missing, Multiclass},
    :opcrit_dysphoria => Union{Missing, Multiclass},
    :opcrit_diurnal_variation => Union{Missing, Multiclass},
    :opcrit_loss_of_pleasure => Union{Missing, Multiclass},
    :opcrit_altered_libido => Union{Missing, Multiclass},
    :opcrit_poor_concentration => Union{Missing, Multiclass},
    :opcrit_excessive_self_reproach => Union{Missing, Multiclass},
    :opcrit_suicidal_ideation => Union{Missing, Multiclass},
    :opcrit_initial_insomnia => Union{Missing, Multiclass},
    :opcrit_middle_insomnia => Union{Missing, Multiclass},
    :opcrit_early_morning_waking => Union{Missing, Multiclass},
    :opcrit_excessive_sleep => Union{Missing, Multiclass},
    :opcrit_poor_appetite => Union{Missing, Multiclass},
    :opcrit_weight_loss => Union{Missing, Multiclass},
    :opcrit_increased_appetite => Union{Missing, Multiclass},
    :opcrit_weight_gain => Union{Missing, Multiclass},
    :opcrit_relationship_between_psychotic_and_affective_symptoms => Union{Missing, Multiclass}, 
    :opcrit_increased_sociability => Union{Missing, Multiclass},
    :opcrit_persecutory_delusions => Union{Missing, Multiclass},
    :opcrit_well_organized_delusions => Union{Missing, Multiclass},
    :opcrit_increased_self_esteem => Union{Missing, Multiclass},
    :opcrit_grandiose_delusions => Union{Missing, Multiclass},
    :opcrit_delusions_of_influence => Union{Missing, Multiclass},
    :opcrit_bizarre_delusions => Union{Missing, Multiclass},
    :opcrit_widespread_delusions => Union{Missing, Multiclass},
    :opcrit_delusions_of_passivity => Union{Missing, Multiclass},
    :opcrit_primary_delusional_perception => Union{Missing, Multiclass},
    :opcrit_other_primary_delusions => Union{Missing, Multiclass},
    :opcrit_delusions_hallucinations_one_week => Union{Missing, Multiclass},
    :opcrit_persecutory_jealous_delusion_hallucination => Union{Missing, Multiclass},
    :opcrit_thought_insertion => Union{Missing, Multiclass},
    :opcrit_thought_withdrawal => Union{Missing, Multiclass},
    :opcrit_thought_broadcast => Union{Missing, Multiclass},
    :opcrit_delusions_of_guilt => Union{Missing, Multiclass},
    :opcrit_delusions_of_poverty => Union{Missing, Multiclass},
    :opcrit_nihilistic_delusions => Union{Missing, Multiclass},
    :opcrit_thought_echo => Union{Missing, Multiclass},
    :opcrit_third_person_auditory_hallucinations => Union{Missing, Multiclass},
    :opcrit_running_commentary_voices => Union{Missing, Multiclass},
    :opcrit_abusive_accusatory_persecutory_voices => Union{Missing, Multiclass},
    :opcrit_other_nonaffective_auditory_hallucinations => Union{Missing, Multiclass},
    :opcrit_nonaffective_hallucination_any_modality => Union{Missing, Multiclass},
    :opcrit_lifetime_dx_alcohol_abuse_dependence => Union{Missing, Multiclass},
    :opcrit_lifetime_diagnosis_cannabis_dependence => Union{Missing, Multiclass},
    :opcrit_lifetime_diagnosis_other_abuse_dependence => Union{Missing, Multiclass},
    :opcrit_alcohol_abuse_dependence_with_psychopathology => Union{Missing, Multiclass},
    :opcrit_cannabis_abuse_dependence_with_psychopathology => Union{Missing, Multiclass},
    :opcrit_other_abuse_dependence_with_psychopathology => Union{Missing, Multiclass},
    :opcrit_information_not_credible => Union{Missing, Multiclass},
    :opcrit_lack_of_insight => Union{Missing, Multiclass},
    :opcrit_rapport_difficult => Union{Missing, Multiclass},
    :opcrit_impairment_incapacity_during_disorder => Union{Missing, Multiclass},
    :opcrit_deterioration_from_premorbid_level_functioning => Union{Missing, Multiclass},
    :opcrit_psychotic_symptoms_respond_to_neuroleptics => Union{Missing, Multiclass},
    :opcrit_course_of_disorder => Union{Missing, Multiclass},
    :vpa_response_narrow => Union{Missing, Multiclass},
    :vpa_a_score => Union{Missing, MLJ.Continuous},
    :vpa_b1_score => Union{Missing, MLJ.Continuous},
    :vpa_b2_score => Union{Missing, MLJ.Continuous},
    :vpa_b3_score => Union{Missing, MLJ.Continuous},
    :vpa_b4_score => Union{Missing, MLJ.Continuous},
    :vpa_b5_score => Union{Missing, MLJ.Continuous},
    :vpa_total_score => Union{Missing, MLJ.Continuous},
    :ltg_response_narrow => Union{Missing, Multiclass},
    :ltg_a_score => Union{Missing, MLJ.Continuous},
    :ltg_b1_score => Union{Missing, MLJ.Continuous},
    :ltg_b2_score => Union{Missing, MLJ.Continuous},
    :ltg_b3_score => Union{Missing, MLJ.Continuous},
    :ltg_b4_score => Union{Missing, MLJ.Continuous},
    :ltg_b5_score => Union{Missing, MLJ.Continuous},
    :ltg_total_score => Union{Missing, MLJ.Continuous}
);

"""
    coerce_scitypes(data)

Function to coerce to appropriate scientific types, such that it can be piped.
"""
coerce_scitypes(data::DataFrame) = coerce(data, colscitypes)

"""
    remove_columns(data, colregex[, fuzzy])

Selects all columns in `data` except those matching the `colregex` pattern. If `fuzzy=false`
then only columns matching `colregex` exactly will be removed.
"""
function remove_columns(data::DataFrame, colregex::String, fuzzy::Bool=true)
    if fuzzy == true 
        out = select(data, Regex("^((?!" * colregex *").)*\$"))
    else
        out = select(data, Regex("^((?!" * colregex *"))"))
    end
    return out
end

remove_ltg_targets(data::DataFrame) = remove_columns(data, "ltg_")
remove_vpa_targets(data::DataFrame) = remove_columns(data, "vpa_")
remove_opcrit(data::DataFrame) = remove_columns(data, "opcrit_")


"""
    probands_only(data)

Excludes any relatives from the dataset.
"""
function probands_only(data::DataFrame)
    data = data[.!ismissing.(data.status), :]
    data = data[data.status .== "Proband", :]
    return select(data, Not(:status))
end

"""
    merge_mania_hypomania_ageofonset(data)

Combines the ages of mania and hypomania onset into a single variable where the minimum is
used as the age of onset for the union of these phases
"""
function merge_mania_hypomania_ageofonset(data::DataFrame)
    data[ismissing.(data.onset_M), "onset_M"] .= 10000
    data[ismissing.(data.onset_m), "onset_m"] .= 10000
    insertcols!(data, :onset_Mm=> min.(data.onset_M, data.onset_m))
    allowmissing!(data)
    data[data.onset_Mm .== 10000,"onset_Mm"] .= missing 
    data = select(data, Not(:onset_M))
    data = select(data, Not(:onset_m))
    return data
end


"""
    normalize_family_history(data)

Normalizes family history counts to [0,1]. If no first degree relatives, value is 0.
"""
function normalize_family_history(data::DataFrame)
    # Dictionary mapping count variable names to the proportion
    fdr_dict = Dict(
        "n_first_degree_rel_anx"=>"p_fdr_anx",
        "n_first_degree_rel_bd1"=>"p_fdr_bd1",
        "n_first_degree_rel_bd2"=>"p_fdr_bd2",
        "n_first_degree_rel_completed_suicide"=>"p_fdr_suic",
        "n_first_degree_rel_suicide_attempt"=>"p_fdr_satt",
        "n_first_degree_rel_scz"=>"p_fdr_scz",
        "n_first_degree_rel_sza"=>"p_fdr_sza",
        "n_first_degree_rel_unaffected"=>"p_fdr_unaff",
        "n_first_degree_rel_unipolar_depression"=>"p_fdr_mdd")
    nfdr = data[:,"total_n_first_degree_rel"]
    for k ∈ keys(fdr_dict)
        p_fdr = passmissing((x,y) -> y == 0 ? 0.0 : x/y).(data[:,k], nfdr)
        insertcols!(data, fdr_dict[k]=> p_fdr)
        data = select(data, Not(k))
    end
    return select(data, Not("total_n_first_degree_rel"))
end

"""
    narrow_comorbidity_definition(data)

For the comorbidity fields `"social_anxiety", "panic_disorder", "generalized_anxiety", 
"ocd", "substance_abuse", "adhd","learning_disability", "primary_insomnia", 
"personality_disorder"` we set a binary indicator as positive only if they met full criteria.
"""
function narrow_comorbidity_definition(data::DataFrame)
    allowmissing(data)
    comorb = ["social_anxiety", "panic_disorder", "generalized_anxiety", 
              "ocd", "substance_abuse", "adhd","learning_disability", 
              "primary_insomnia", "personality_disorder"]
    for c ∈ comorb
        data[:,c] = passmissing(x -> replace(x, "Subsyndromal"=>"No")).(data[:,c])
        data[:,c] = passmissing(x -> replace(x, "Full criteria"=>"Yes")).(data[:,c])
    end

    # Remove comorbidity ages of onset
    data = remove_columns(data, "age_onset_")
    # Remove diabetes mellitus type
    data = remove_columns(data, "diabetes_mellitus_type")
    return data
end

"""
    narrow_comorbidity_definition(data)

Removes variables that are excluded from the analysis based on being (A) after medication 
initiation, or deemed irrelevant a priori. These variables are "dob", "assessment_date",
"most_recent_update", "affected_status", "gaf_last_assessment", "marital_status", "ses",
"primary_diagnosis", "n_episodes_on_li", "father_ethnicity", "mother_ethnicity", 
"diagnosis", "total_lifetime_episodes", "n_second_degree_rel_completed_suicide",
"n_second_degree_rel_suicide_attempt", "n_suicide_attempts", "lifetime_manias", 
"lifetime_depressions", "lifetime_mixed", "lifetime_multiphasic", "lifetime_psychosis", and 
"lifetime_hx_suicide_ideation".
"""
function remove_excluded_variables(data::DataFrame)
    excluded_vars = ["dob",
                     "assessment_date",
                     "most_recent_update",
                     "affected_status",
                     "gaf_last_assessment",
                     "marital_status", 
                     "ses",
                     "primary_diagnosis",
                     "n_episodes_on_li",
                     "father_ethnicity",
                     "mother_ethnicity",
                     "diagnosis", 
                     "total_lifetime_episodes", 
                     "n_second_degree_rel_completed_suicide",
                     "n_second_degree_rel_suicide_attempt", 
                     "n_suicide_attempts",
                     "lifetime_manias",
                     "lifetime_depressions",
                     "lifetime_mixed",
                     "lifetime_multiphasic",
                     "lifetime_psychosis",
                     "lifetime_hx_suicide_ideation"]
    for v ∈ excluded_vars
        data = select(data, Not(v))
    end
    return data
end

""" 
    remove_ids(data)

Removes family and person ID's.
"""
function remove_ids(data::DataFrame)
    for v ∈ ["family_id", "person_id"]
        data = select(data, Not(v))
    end
    return data
end

""" 
    replace_centre_names(data)

Replace centre names with their acronyms.
"""
function replace_centre_names(data::DataFrame) 
    data[:,:centre] = replace.(data[:,:centre], "Ottawa/Hamilton"=>"ON")
    data[:,:centre] = replace.(data[:,:centre], "Montreal"=>"MTL")
    data[:,:centre] = replace.(data[:,:centre], "Maritimes"=>"MAR")
    data[:,:centre] = replace.(data[:,:centre], "Cagliari (Centro Bini)"=>"CB")
    data[:,:centre] = replace.(data[:,:centre], "Cagliari (University)"=>"CU")
    data[:,:centre] = replace.(data[:,:centre], "Cagliari (PLOT-BD)"=>"CP")
    data[:,:centre] = replace.(data[:,:centre], "Poznan"=>"POZ")
    data[:,:centre] = replace.(data[:,:centre], "Austria"=>"AUT")
    data[:,:centre] = replace.(data[:,:centre], "Barcelona (Colom)"=>"BARC")
    data[:,:centre] = replace.(data[:,:centre], "Barcelona (Murru)"=>"BARM")
    return data 
end

"""
    remove_incomplete_targets(data, regex_str)

Includes only those rows that have complete records for the specified column
"""
function remove_incomplete_targets(data::DataFrame, regex_str::Regex)
    return data[completecases(select(data, regex_str)),:]
end

remove_incomplete_li_target_binary(data::DataFrame) = remove_incomplete_targets(data, r"li_response_narrow") 
remove_incomplete_li_target_numerical(data::DataFrame) = remove_incomplete_targets(data, r"li_[b|a]")

"""
    remove_zerovar(X)

    Removes variables whose variance is equal to 0 or NaN.
"""
Base.isnan(x::Nothing) = false
function remove_zerovar(X::DataFrame)
    feat = describe(X, :std)
    return select(X, filter(:std => x -> !any(f -> f(x), (y-> !isnothing(y) ? y < 0.5 : false, ismissing, Base.isnan)), feat).variable)
end

"""
    compute_alda_b_score(data[, med])

Sum over Alda B scores for `med ∈ ["li", "vpa", "ltg"]`
"""
function compute_alda_b_score(data::DataFrame, med::String="li")
    regex_str = Regex(med*"_b")
    return sum(eachcol(select(data, regex_str)))
end

"""
    compute_alda_total_score(data[, med])

Sum over Alda total scores.
"""
function compute_alda_total_score(data::DataFrame, med::String="li")
    b_score = compute_alda_b_score(data, med)
    data[:, med*"_total_score"] .= data[:, med*"_a_score"] - b_score
    return data
end

# Splits the data into features, targets and confounds (centre)
function unpack_features_targets_covariates(
        data::Union{DataFrame, SubDataFrame}, 
        target::String, 
        thresh::Union{Nothing, Float64, Int64}=nothing
    )
    if target == "li_response_binary"
        Y = data[:, "li_total_score"] |> Vector{Float64} 
        Y = map(x -> x >= thresh ? 1. : 0., Y)
    elseif target == "li_nonresponse_binary"
        Y = data[:, "li_total_score"] |> Vector{Float64} 
        Y = map(x -> thresh >= x ? 1. : 0., Y)
    else
        Y = data[:, target] |> Vector{Float64} 
    end
    Z = select(data, "centre")
    X = remove_columns(remove_columns(data, "li_"), "centre")
    return X, Y, Z
end

"""
    prune_missingness(data, p)

Function that identifies which features have less than p (proportion) of values missing.
"""
function prune_missingness(data::DataFrame, p::Float64=0.6)
    return describe(data, :nmissing) |> x -> x[x[:,:nmissing]./size(data,1) .< p,:variable]
end

