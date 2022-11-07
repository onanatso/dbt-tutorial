{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_BASEBALL_MEASURE') }}
