{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_GRADES') }}
