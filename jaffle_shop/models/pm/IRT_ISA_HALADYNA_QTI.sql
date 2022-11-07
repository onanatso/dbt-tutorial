{{ config(materialized='view',secure=true) }}{{ create_pm_view('IRT_ISA_HALADYNA_QTI') }}
