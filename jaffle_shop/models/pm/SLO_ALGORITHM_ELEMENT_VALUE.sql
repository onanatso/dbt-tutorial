{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_ALGORITHM_ELEMENT_VALUE') }}
