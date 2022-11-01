{{ config(
    materialized='table'
)}}

select schema_name 
from {{env_var('MT_DATABASE')}}.information_schema.schemata 
where schema_name like '{{env_var('MT_DATABASE')}}_{{env_var('MT_TENANT')}}%'
and schema_name not like '%_ODS'
