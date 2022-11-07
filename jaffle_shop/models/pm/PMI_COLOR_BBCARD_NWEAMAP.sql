{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMI_COLOR_BBCARD_NWEAMAP') }}
