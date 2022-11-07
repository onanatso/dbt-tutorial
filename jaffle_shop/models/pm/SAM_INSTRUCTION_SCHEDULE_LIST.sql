{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_INSTRUCTION_SCHEDULE_LIST') }}
