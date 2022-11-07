{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_ORG_CALENDAR_DAY') }}
