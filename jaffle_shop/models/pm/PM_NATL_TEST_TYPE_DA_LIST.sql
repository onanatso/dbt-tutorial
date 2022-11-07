{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_NATL_TEST_TYPE_DA_LIST') }}
