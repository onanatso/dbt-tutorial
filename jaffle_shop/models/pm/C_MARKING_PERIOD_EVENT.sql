{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_MARKING_PERIOD_EVENT') }}
