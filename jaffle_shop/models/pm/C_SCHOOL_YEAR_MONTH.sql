{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_SCHOOL_YEAR_MONTH') }}
