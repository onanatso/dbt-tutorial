{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMI_MENU_DA_LIST') }}
