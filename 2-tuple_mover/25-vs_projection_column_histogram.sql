SELECT
  table_name,
  projection_name,
  projection_column_name,
  h.key,
  h.row_count
FROM projection_columns c
  JOIN vs_projection_column_histogram h
  ON h.column_id = c.column_id
WHERE 
  table_name = 'product_dimension'
  AND projection_name ilike '%b0'
  AND projection_column_name = 'discontinued_flag'
ORDER BY 1,2,3,4;

