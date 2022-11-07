{{ config(materialized='view',secure=true) }}{{ create_pm_view('SLO_GROUP_TEMPLATE_SCHOOL_LIST') }}
