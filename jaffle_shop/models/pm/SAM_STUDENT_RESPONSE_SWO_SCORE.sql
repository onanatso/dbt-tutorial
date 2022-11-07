{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_STUDENT_RESPONSE_SWO_SCORE') }}
