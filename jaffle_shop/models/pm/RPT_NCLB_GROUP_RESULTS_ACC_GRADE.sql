{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_NCLB_GROUP_RESULTS_ACC_GRADE') }}
