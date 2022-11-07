{#- Gets all the schema names associated with the tenant, the names may include the school year -#}
{% macro get_tenant_schemas() -%}

    {%- set sql -%}
    select schema_name 
    from {{env_var('MT_DATABASE')}}.information_schema.schemata 
    where schema_name like '{{env_var('MT_DATABASE')}}_{{env_var('MT_TENANT')}}%'
    and schema_name not like '%_ODS'
    {%- endset -%}

    {%- set results = run_query(sql) -%} 

    {%- if execute -%}
        {%- set var_schema_list = results.columns[0].values() -%}
        {{ log(var_schema_list) }}
        {{ return(var_schema_list) }}
    {%- endif -%}

{%- endmacro %}