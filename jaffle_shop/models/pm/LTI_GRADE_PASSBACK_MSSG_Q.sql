{{ config(materialized='view',secure=true) }}{{ create_pm_view('LTI_GRADE_PASSBACK_MSSG_Q') }}
