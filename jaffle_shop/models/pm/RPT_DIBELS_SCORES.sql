{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_DIBELS_SCORES') }}
