{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_ANSWER_KEY_QTI_HUMAN_SCORE_PP') }}
