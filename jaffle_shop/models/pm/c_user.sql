{{ config(materialized='view') }}
{{ create_pm_view('c_user') }}