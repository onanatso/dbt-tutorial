{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_COURSE_TYPE_AYP_SUBJECT_LIST') }}
