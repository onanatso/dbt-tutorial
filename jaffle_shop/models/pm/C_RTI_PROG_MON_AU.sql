{{ config(materialized='view',secure=true) }}{{ create_pm_view('C_RTI_PROG_MON_AU') }}
