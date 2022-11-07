{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_BBCARD_IREADY_ADMIN_PERIOD') }}
