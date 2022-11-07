{{ config(materialized='view',secure=true) }}{{ create_pm_view('LTI_INITIATED_TEST_STUDENT') }}
