{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_ANSWER_TYPE_DEFAULT') }}
