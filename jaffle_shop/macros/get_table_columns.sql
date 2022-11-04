{#- Gets all the columns for a specific table in order of ordinal_position -#}
{% macro get_table_columns(in_table_name) -%}
    {%- set sql -%}
    select column_name
    from {{env_var('MT_DATABASE')}}.INFORMATION_SCHEMA.COLUMNS
    where table_schema = '{{env_var('MT_DATABASE')}}_{{env_var('MT_TENANT')}}'
    and table_name = '{{ in_table_name|upper }}'
    order by ordinal_position
    {%- endset %}

    {%- set results = run_query(sql) -%} 

    {%- if execute -%}
        {%- set var_column_list = results.columns[0].values() -%}
        {{ log(var_column_list) }}
        {{ return(var_column_list) }}
    {%- endif -%}

{%- endmacro %}