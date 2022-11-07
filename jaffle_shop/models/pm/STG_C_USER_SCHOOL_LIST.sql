{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_C_USER_SCHOOL_LIST') }}
