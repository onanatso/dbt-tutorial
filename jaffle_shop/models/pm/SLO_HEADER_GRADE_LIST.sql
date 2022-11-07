{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_HEADER_GRADE_LIST') }}
