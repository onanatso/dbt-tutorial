{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_QUESTION_TYPE') }}
