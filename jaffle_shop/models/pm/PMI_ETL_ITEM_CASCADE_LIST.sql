{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMI_ETL_ITEM_CASCADE_LIST') }}
