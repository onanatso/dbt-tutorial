{{ config(materialized='view',secure=true) }}{{ create_pm_view('FAST_NAV_DA_LIST') }}
