{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_COLOR_AYP_STRAND') }}
