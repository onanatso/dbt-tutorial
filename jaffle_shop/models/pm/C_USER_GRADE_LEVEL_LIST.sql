{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_USER_GRADE_LEVEL_LIST') }}
