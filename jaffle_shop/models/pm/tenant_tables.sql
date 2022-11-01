{{ config(
    materialized='table'
)}}

select table_name
from {{env_var('MT_DATABASE')}}.information_schema.tables
where table_schema = '{{env_var('MT_DATABASE')}}_{{env_var('MT_TENANT')}}'