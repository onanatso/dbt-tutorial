{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_GRAD_SUBJECT_STUDENT_PROJECTS') }}
