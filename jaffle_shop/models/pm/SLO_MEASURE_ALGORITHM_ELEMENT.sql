{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_MEASURE_ALGORITHM_ELEMENT') }}
