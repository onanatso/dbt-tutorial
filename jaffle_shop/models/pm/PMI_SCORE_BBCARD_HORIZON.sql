{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMI_SCORE_BBCARD_HORIZON') }}
