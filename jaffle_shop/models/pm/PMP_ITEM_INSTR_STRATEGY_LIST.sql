{{ config(materialized='view',secure=true) }}{{ create_pm_view('PMP_ITEM_INSTR_STRATEGY_LIST') }}
