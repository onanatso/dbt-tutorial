{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_SNAP_MEASURE_PERIOD') }}
