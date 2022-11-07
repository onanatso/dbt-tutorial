{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_AYP_YEAR_CLASS') }}
