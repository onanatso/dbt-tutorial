{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_SCHEDULE_PERIOD_YEAR') }}
