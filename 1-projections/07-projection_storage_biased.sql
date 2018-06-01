SELECT
  node_name,
  projection_name,
  row_count,
  used_bytes
FROM projection_storage
WHERE projection_name ILIKE 'fact_sales_b%'
ORDER BY 1,2;
