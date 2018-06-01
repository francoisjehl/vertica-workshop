SELECT
  projection_name,
  row_count,
  ros_row_count,
  ros_used_bytes,
  wos_row_count,
  wos_used_bytes 
FROM projection_storage
WHERE anchor_table_name = 'fact_sales';

SELECT COUNT(0)
FROM workshop.fact_sales;
