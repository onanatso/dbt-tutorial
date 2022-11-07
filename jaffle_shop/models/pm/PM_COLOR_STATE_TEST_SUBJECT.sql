{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_COLOR_STATE_TEST_SUBJECT') }}
