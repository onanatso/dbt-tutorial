{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_RTI_STUDENT_INTERV') }}
