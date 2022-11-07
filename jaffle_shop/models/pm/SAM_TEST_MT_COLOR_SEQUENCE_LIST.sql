{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_TEST_MT_COLOR_SEQUENCE_LIST') }}
