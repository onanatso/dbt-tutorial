{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_STATE_TEST_SCORES') }}
