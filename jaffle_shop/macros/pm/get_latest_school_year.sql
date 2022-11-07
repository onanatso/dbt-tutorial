{#- Gets the latest school year based on the list of schema names -#}
{%- macro get_latest_school_year(in_schema_array) -%}
    {%- set ns = namespace(var_max_school_year=0) -%}
    {%- for var_schema_name in in_schema_array -%}       
        {%- set var_schema_name_parts = var_schema_name.split(sep='_') -%}
        {%- set var_school_year_index = (var_schema_name_parts | length)-1 -%}
        {%- set var_school_year = var_schema_name_parts[var_school_year_index] -%}
        {%- if var_school_year|int != 0 -%}
            {%- if var_school_year|int > ns.var_max_school_year -%}
                {%- set ns.var_max_school_year = var_school_year|int -%}
            {%- endif %}       
        {%- endif -%}
    {%- endfor -%}
    {%- set ns.var_max_school_year = ns.var_max_school_year + 1 -%}
    {{ log(ns.var_max_school_year) }}
    {{ ns.var_max_school_year }}
{%- endmacro -%}