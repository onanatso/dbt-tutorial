{{ config(materialized='view',secure=true) }}{{ create_pm_view('PM_BBCARD_MESURE_DELETE') }}
