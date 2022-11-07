{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_DETAIL_STAFF_ATTRIBUTE') }}
