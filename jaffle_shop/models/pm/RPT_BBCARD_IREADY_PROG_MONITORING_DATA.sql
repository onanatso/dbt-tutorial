{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_BBCARD_IREADY_PROG_MONITORING_DATA') }}
