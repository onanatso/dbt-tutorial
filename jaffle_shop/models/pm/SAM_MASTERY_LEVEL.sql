{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_MASTERY_LEVEL') }}
