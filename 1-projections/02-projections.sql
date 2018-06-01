SELECT
   projection_schema,
   anchor_table_name,
   projection_name,
   is_segmented,
   segment_expression 
FROM projections
WHERE anchor_table_name = 'fact_sales';
