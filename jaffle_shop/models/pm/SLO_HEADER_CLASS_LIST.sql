{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_HEADER_CLASS_LIST') }}
