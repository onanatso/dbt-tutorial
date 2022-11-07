{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_PRINT_JOB_QUEUE') }}
