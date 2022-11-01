{#- Macro returns a school year based on the schema name -#}
{% macro get_school_year(in_schema_name) -%}
    {%- set var_schema_name_parts = in_schema_name.split(sep='_') -%}
    {%- set var_school_year_index = (var_schema_name_parts | length)-1 -%}
    {%- set var_school_year = var_schema_name_parts[var_school_year_index] -%}
    {% if var_school_year|int != 0 -%}
       {{ var_school_year }}
    {%- else -%}
       {{ get_latest_school_year() }}
    {%- endif %}
{%- endmacro %}