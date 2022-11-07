{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_TEST_AYP_CURRICULUM_PERIOD_SCORES') }}
