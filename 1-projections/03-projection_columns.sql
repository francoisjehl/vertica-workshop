SELECT 
  projection_name,
  projection_column_name,
  column_position,
  sort_position,
  data_type,
  encoding_type 
FROM projection_columns
WHERE projection_name ILIKE 'fact_sales_b%';
