{{ config(materialized='view',secure=true) }}{{ create_pm_view('DW_SAM_TEST_FACT') }}
