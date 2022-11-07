{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_TEST_ASSESSMENT_ITEM_ATTR_SCORES') }}
