{{ config(materialized='view',secure=true) }}{{ create_pm_view('STUDENT_LOAD_EXCEPTION') }}
