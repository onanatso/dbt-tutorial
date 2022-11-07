{{ config(materialized='view',secure=true) }}{{ create_pm_view('PP_USER_STUDENT_LIST') }}
