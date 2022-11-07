{{ config(materialized='view',secure=true) }}{{ create_pm_view('INPUT_CONTROL_TYPE') }}
