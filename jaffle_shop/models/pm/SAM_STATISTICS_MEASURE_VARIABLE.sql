{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_STATISTICS_MEASURE_VARIABLE') }}
