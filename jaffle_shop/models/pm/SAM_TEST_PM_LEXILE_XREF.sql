{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_TEST_PM_LEXILE_XREF') }}
