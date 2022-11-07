{{ config(materialized='view',secure=true) }}{{ create_pm_view('PARENT_USER') }}
