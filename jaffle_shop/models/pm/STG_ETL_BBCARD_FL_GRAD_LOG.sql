{{ config(materialized='view',secure=true) }}{{ create_pm_view('STG_ETL_BBCARD_FL_GRAD_LOG') }}
