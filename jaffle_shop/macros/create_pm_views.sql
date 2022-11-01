{% macro create_pm_views() %}

{{ log("Running create_pm_views()") }}

{# Get the array of schemas #}
{% set sql %}select schema_name from {{ ref('tenant_schemas') }}{% endset %}
{% set var_schema_array = run_query(sql) %}

{# Get the array of tables #}
{% set sql %}select table_name from {{ ref('tenant_tables') }} order by table_name {% endset %}
{% set var_table_array = run_query(sql) %}

{% if execute %}
     {% for var_table_name in var_table_array.columns[0].values() %}
        {{ log("Creating view " + var_schema_name + "." + var_table_name) }}        

        {# Get the array of columns #}
        {% set sql %}select column_name from {{ ref('tenant_columns') }} where table_name = '{{ var_table_name }}' order by ordinal_position{% endset %}
        {% set var_column_array = run_query(sql) %}

        {% for var_schema_name in var_schema_array.columns[0].values() %}       
            select 
            {% for var_column_name in var_column_array.columns[0].values() %}
                var_column_name {% if not loop.last -%}, {%- endif %}
            {% endfor %}    
            from {{ var_schema_name }}.{{ var_table_name }}
            {% if not loop.last -%} union all {%- endif %}
        {% endfor %}
    {% endfor %}
{% endif %}

{% endmacro %}

depends_on: {{ ref('tenant_schemas') }}
depends_on: {{ ref('tenant_tables') }}
depends_on: {{ ref('tenant_columns') }}

{{ create_pm_views()}}