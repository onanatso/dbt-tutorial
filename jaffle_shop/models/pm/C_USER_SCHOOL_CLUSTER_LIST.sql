{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_USER_SCHOOL_CLUSTER_LIST') }}
