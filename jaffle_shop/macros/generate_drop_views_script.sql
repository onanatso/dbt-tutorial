{#- Generates a script of drop view statements. This is solely for manual development use. -#}
{%- macro generate_drop_views_script() -%}
    {%- set sql -%}
    select table_name
    from {{env_var('MT_DATABASE')}}.INFORMATION_SCHEMA.TABLES
    where table_schema = '{{env_var('MT_DATABASE')}}_{{env_var('MT_TENANT')}}'
    {%- endset -%}
    {%- set results = run_query(sql) -%} 
    {%- if execute -%}
        {%- set var_table_list = results.columns[0].values() -%}
        {% for var_table_name in var_table_list %}
drop view if exists {{ var_table_name }};
        {%- endfor %}
    {%- endif -%}
{%- endmacro -%}