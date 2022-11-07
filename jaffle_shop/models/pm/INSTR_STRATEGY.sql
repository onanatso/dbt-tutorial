{{ config(materialized='view',secure=true) }}{{ create_pm_view('INSTR_STRATEGY') }}
