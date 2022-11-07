{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_CURRICULUM_GRADE_LIST') }}
