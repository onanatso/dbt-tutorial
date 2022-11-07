{{ config(materialized='view',secure=true) }}{{ create_pm_view('IRT_TEST_QUESTION_RESPONSE') }}
