{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_GRAD_SUBJECT_REQUIRED_PROJECTS') }}
