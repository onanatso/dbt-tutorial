{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_MEETING_PURPOSE') }}
