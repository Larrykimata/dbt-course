{{
    config(
        materialized = 'table'
    )
}}
WITH dim_hosts_cleansed AS (
    SELECT * FROM {{ ref('src_hosts') }}
)

SELECT 
    host_id,
    NVL(NULLIF(host_name, ''), 'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM src_hosts


