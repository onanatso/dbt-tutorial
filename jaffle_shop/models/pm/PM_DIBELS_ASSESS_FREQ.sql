{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_DIBELS_ASSESS_FREQ') }}
