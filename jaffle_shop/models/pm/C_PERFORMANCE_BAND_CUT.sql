{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_PERFORMANCE_BAND_CUT') }}
