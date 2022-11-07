{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_STUDENT_ACTIVE_STATUS_PRE_BUILD') }}
