{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_COURSE_SECTION') }}
