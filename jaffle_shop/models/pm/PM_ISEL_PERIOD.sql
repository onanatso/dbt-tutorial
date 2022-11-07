{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_ISEL_PERIOD') }}
