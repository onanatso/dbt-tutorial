{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMI_USER_DEF_GROUP_ITEM') }}
