{{ config(materialized='view',secure=true) }}{{ create_pm_view('BUILD_CORE_AUDIT_DETAIL') }}
