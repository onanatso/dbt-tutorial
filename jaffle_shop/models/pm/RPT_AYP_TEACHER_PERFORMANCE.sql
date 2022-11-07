{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_AYP_TEACHER_PERFORMANCE') }}
