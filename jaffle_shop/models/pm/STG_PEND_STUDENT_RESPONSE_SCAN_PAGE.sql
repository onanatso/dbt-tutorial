{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_PEND_STUDENT_RESPONSE_SCAN_PAGE') }}
