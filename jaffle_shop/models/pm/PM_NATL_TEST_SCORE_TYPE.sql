{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_NATL_TEST_SCORE_TYPE') }}
