{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_BASEBALL_DETAIL_LEADING') }}
