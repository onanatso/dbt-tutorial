{{ config(materialized='view',secure=true) }}{{ create_pm_view('FAST_TABLE_COLUMN') }}
