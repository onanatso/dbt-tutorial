{{ config(materialized='view',secure=true) }}{{ create_pm_view('FAST_NAV_TABLE_COLUMN_EXCLUDE_LIST') }}
