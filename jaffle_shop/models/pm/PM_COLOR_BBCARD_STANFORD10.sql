{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_COLOR_BBCARD_STANFORD10') }}
