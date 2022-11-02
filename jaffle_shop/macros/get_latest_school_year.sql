{#- Gets the latest school year based on the schema name -#}
{% macro get_latest_school_year() -%}  
    {#- Get the array of schemas -#}
    {% set sql -%}select schema_name from {{ ref('tenant_schemas') }}{%- endset %}
    {%- set var_schema_array = run_query(sql) -%}
    {%- set ns = namespace(var_max_school_year=0) -%}
    {% for var_schema_name in var_schema_array.columns[0].values() -%}       
        {%- set var_schema_name_parts = var_schema_name.split(sep='_') -%}
        {%- set var_school_year_index = (var_schema_name_parts | length)-1 -%}
        {%- set var_school_year = var_schema_name_parts[var_school_year_index] -%}
        {% if var_school_year|int != 0 -%}
            {% if var_school_year|int > ns.var_max_school_year -%}
                {%- set ns.var_max_school_year = var_school_year|int -%}
            {%- endif %}       
        {%- endif %}
    {%- endfor %}
    {%- set ns.var_max_school_year = ns.var_max_school_year + 1 -%}
    {{ ns.var_max_school_year }}
{%- endmacro %}