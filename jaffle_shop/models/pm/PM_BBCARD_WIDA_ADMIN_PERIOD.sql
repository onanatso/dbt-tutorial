{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_BBCARD_WIDA_ADMIN_PERIOD') }}
