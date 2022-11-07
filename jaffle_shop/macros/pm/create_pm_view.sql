{% macro create_pm_view(in_table_name) -%}

    {%- set var_schema_list = get_tenant_schemas() -%}

    {%- set var_latest_school_year = get_latest_school_year(var_schema_list) -%}     

    {%- set var_column_list = get_table_columns(in_table_name) -%}      

    {% for var_schema_name in var_schema_list %}  
        select
        {{ get_schema_school_year(var_schema_name,var_latest_school_year) }} as SCHOOL_YEAR,
        {% for var_column_name in var_column_list -%}
            {{ var_column_name }}{% if not loop.last -%}, {%- endif %}
        {% endfor %}    
        from {{env_var('MT_DATABASE')}}.{{ var_schema_name|upper }}.{{ in_table_name|upper }}
        {% if not loop.last %}union all{% endif %}
    {%- endfor %}

{%- endmacro %}
