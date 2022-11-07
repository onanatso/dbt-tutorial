{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_GRAD_SUB_STU_REQ_MET') }}
