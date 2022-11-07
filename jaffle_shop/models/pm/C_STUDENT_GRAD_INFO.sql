{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_STUDENT_GRAD_INFO') }}
