{{ config(materialized='view',secure=true) }}{{ create_pm_view('GRAD_CONTENT_AREA') }}
