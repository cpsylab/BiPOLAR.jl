module BiPOLAR

using DataFrames
using LaTeXStrings 
using Missings
using MLJ
using Distributions
using Plots


include("analysis.jl")  # Experimental designs
include("cb.jl")        # Causal bootstrapping
include("criticism.jl") # Performance evaluation functions
include("dataio.jl")    # Data cleaning/preprocessing
include("heterogeneity.jl") # Heterogeneity analysis functions
include("models.jl")    # Model specifications
include("qc.jl")        # Quality control functions

# Analyses functions 
export classification_analysis
export pca_plot
export shuffle_split
export split_prune_bootstrap

# Causal bootstrapping functions
export cb_backdoor_discrete
export discrete_causal_bootstrapping

# Criticism functions 
export classification_report
export classification_predictions
export store_classification_results
export summarize_classification_results
export store_classification_predictions
export compute_reliability_curve
export plot_reliability_curves
export plot_roc_curves

# DataIO functions
export remove_columns
export remove_ltg_targets, remove_vpa_targets
export remove_ids, remove_opcrit, remove_excluded_variables
export remove_n_episode_outliers

export probands_only
export limit_to_bd_diagnosis
export merge_mania_hypomania_ageofonset 
export normalize_family_history
export narrow_comorbidity_definition
export replace_centre_names
export remove_incomplete_targets
export remove_incomplete_li_target_binary
export remove_incomplete_li_target_numerical
export remove_lowvar
export compute_alda_b_score, compute_alda_total_score
export unpack_features_targets_covariates
export prune_missingness
export coerce_scitypes

# Heterogeneity 
export renyi, renyi_pooled, renyi_within, renyi_between

# Model functions 
export linear_classifier 
export rf_classifier

# QC 
export filter_qc_exclusions
export qc_age_consistency


end
