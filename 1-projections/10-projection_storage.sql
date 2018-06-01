SELECT
  node_name,
  projection_name,
  row_count,
  used_bytes
FROM projection_storage
WHERE projection_name ILIKE 'dim_client%'
ORDER BY 1,2;
