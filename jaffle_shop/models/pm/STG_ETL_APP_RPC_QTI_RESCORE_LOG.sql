{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_ETL_APP_RPC_QTI_RESCORE_LOG') }}
