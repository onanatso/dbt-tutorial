{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_SMI_QUANTILE_SCORES') }}
