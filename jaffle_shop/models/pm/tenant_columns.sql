{{ config(
    materialized='table'
)}}

select c1.table_name, c1.ordinal_position, c1.column_name
from {{env_var('MT_DATABASE')}}.information_schema.columns c1
inner join {{env_var('MT_DATABASE')}}.information_schema.tables t1 on t1.table_name = c1.table_name and t1.table_schema = c1.table_schema
where t1.table_schema = '{{env_var('MT_DATABASE')}}_{{env_var('MT_TENANT')}}'