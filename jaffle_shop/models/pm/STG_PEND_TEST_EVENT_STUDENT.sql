{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_PEND_TEST_EVENT_STUDENT') }}
