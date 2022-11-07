{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMI_ETL_CLIENT_SETTINGS_LIST') }}
