{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_COLOR_MEASURE_BAND') }}
