{{ config(materialized='view',secure=true) }}{{ create_pm_view('RTI_SCORING_TOOL') }}
