{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_BAND_TEST') }}
