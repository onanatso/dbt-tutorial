{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_BM_SCORES_CLASS') }}
