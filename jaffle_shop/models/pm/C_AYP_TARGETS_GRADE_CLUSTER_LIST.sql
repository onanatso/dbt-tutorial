{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_AYP_TARGETS_GRADE_CLUSTER_LIST') }}
