{{ config(materialized='view',secure=true) }}{{ create_pm_view('RTI_STU_INTERV_MANUAL_SCORE_AU') }}
