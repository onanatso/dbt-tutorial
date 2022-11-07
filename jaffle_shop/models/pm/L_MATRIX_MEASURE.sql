{{ config(materialized='view',secure=true) }}{{ create_pm_view('L_MATRIX_MEASURE') }}
