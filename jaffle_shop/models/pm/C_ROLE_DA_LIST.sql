{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_ROLE_DA_LIST') }}
