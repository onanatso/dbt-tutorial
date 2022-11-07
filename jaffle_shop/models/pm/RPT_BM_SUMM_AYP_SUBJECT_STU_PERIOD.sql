{{ config(materialized='view',secure=true) }}{{ create_pm_view('RPT_BM_SUMM_AYP_SUBJECT_STU_PERIOD') }}
