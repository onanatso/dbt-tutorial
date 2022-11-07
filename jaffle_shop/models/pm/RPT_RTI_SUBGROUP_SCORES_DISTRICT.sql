{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_RTI_SUBGROUP_SCORES_DISTRICT') }}
