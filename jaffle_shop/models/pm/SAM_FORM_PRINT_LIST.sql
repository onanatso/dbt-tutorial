{{ config(materialized='view',secure=true) }}{{ create_pm_view('SAM_FORM_PRINT_LIST') }}
