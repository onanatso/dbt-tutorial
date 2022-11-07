{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_IDEL_ASSESS_FREQ_PERIOD') }}
