{{ config(materialized='view',secure=true) }}{{ create_pm_view('FAST_NAV_QUESTION_LINK_LIST') }}
