{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_TEST_EVENT_SWO') }}
