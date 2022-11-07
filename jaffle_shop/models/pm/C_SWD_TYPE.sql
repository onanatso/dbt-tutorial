{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_SWD_TYPE') }}
