{%- macro get_schema_tables() -%}
    {%- set sql -%}
    select table_name
    from {{env_var('MT_DATABASE')}}.INFORMATION_SCHEMA.TABLES
    where table_schema = '{{env_var('MT_DATABASE')}}_{{env_var('MT_TENANT')}}'
    and table_name not like 'TMP^_%' escape '^'
    and table_name not like 'UTIL^_%' escape '^'
    and table_name not like 'ZZZ^_%' escape '^'
    and table_name not like 'PMI^_ETL^_BUILD^_ITEM^_BACKUP^_%' escape '^'
    and table_name != 'FIVETRAN_AUDIT'
    {%- endset -%}
    {%- set results = run_query(sql) -%} 
    {%- if execute -%}
        {%- set var_table_list = results.columns[0].values() -%}
        {% for var_table_name in var_table_list %}
{{ var_table_name }}
        {%- endfor %}
    {%- endif -%}
{%- endmacro -%}