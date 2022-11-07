{{ config(materialized='view',secure=true) }}{{ create_pm_view('RTI_SETTING_LEVEL_MAPPING') }}
