{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_CALENDAR_DATE_TYPE') }}
