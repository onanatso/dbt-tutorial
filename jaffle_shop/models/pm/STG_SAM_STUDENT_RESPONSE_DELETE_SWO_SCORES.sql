{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_SAM_STUDENT_RESPONSE_DELETE_SWO_SCORES') }}
