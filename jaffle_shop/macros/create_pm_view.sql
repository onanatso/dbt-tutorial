{% macro create_pm_view(in_table_name) -%}

{#- Get the array of schemas -#}
{% set sql -%}select schema_name from {{ ref('tenant_schemas') }}{%- endset %}
{%- set var_schema_array = run_query(sql) -%}        
{% if execute %}
    {#- Get the array of columns -#}
    {% set sql -%}select column_name from {{ ref('tenant_columns') }} where table_name = '{{ in_table_name|upper }}' order by ordinal_position{%- endset %}
    {%- set var_column_array = run_query(sql) -%}
    {% for var_schema_name in var_schema_array.columns[0].values() %}       
        select
        {{ get_school_year(var_schema_name) }} as SCHOOL_YEAR,
        {% for var_column_name in var_column_array.columns[0].values() -%}
            {{ var_column_name }}{% if not loop.last -%}, {%- endif %}
        {% endfor %}    
        from {{env_var('MT_DATABASE')}}.{{ var_schema_name|upper }}.{{ in_table_name|upper }}
        {% if not loop.last %}union all{% endif %}
    {%- endfor %}
{%- endif %}
{%- endmacro %}
