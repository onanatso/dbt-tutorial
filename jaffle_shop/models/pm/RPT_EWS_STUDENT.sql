{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_EWS_STUDENT') }}
