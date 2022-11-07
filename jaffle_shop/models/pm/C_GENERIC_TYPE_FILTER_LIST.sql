{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_GENERIC_TYPE_FILTER_LIST') }}
