{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_CLASS_ENROLLMENT_HIST') }}
