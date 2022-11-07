{{ config(materialized='view',secure=true) }}{{ create_pm_view('DB_VERSION') }}
