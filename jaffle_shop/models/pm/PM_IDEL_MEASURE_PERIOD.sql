{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_IDEL_MEASURE_PERIOD') }}
