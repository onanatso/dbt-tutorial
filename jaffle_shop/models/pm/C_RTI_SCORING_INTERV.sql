{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_RTI_SCORING_INTERV') }}
