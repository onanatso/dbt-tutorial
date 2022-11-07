{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_SAM_ANSWER_KEY_DATA_CHANGE') }}
