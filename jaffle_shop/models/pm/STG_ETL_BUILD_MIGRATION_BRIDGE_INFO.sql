{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_ETL_BUILD_MIGRATION_BRIDGE_INFO') }}
