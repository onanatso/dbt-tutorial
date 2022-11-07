{{ config(materialized='view',secure=true) }}{{ create_pm_view('ADMS_GUI_OBJECT') }}
