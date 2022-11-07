{{ config(materialized='view',secure=true) }}{{ create_pm_view('FAST_NAV_USER_ANSWER_DA_LIST') }}
