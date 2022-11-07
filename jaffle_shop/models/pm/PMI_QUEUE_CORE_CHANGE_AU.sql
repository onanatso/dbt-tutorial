{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMI_QUEUE_CORE_CHANGE_AU') }}
