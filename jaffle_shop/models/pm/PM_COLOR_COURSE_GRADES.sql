{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_COLOR_COURSE_GRADES') }}
