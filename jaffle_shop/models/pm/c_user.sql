{{ config(materialized='view') }}

-- depends_on: {{ ref('tenant_schemas') }}
-- depends_on: {{ ref('tenant_columns') }}

{{ create_pm_view('c_user') }}