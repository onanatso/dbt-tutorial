{{ config(materialized='view',secure=true) }}{{ create_pm_view('EWS_RULE') }}
