{{ config(materialized='view',secure=true) }}{{ create_pm_view('DW_OLA_STUDENT_STATUS_MANUAL_FACT') }}
