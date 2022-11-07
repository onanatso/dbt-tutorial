{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_PEND_LOAD_RESPONSE_EXCEPTION') }}
