{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_TEST_BUILDING_AYP_GROUP_SCORES') }}
