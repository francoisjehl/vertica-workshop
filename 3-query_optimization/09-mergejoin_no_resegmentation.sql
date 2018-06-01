EXPLAIN SELECT
  d.category_description,
  SUM(f.qty_in_stock) qty_in_stock
FROM public.inventory_fact f
JOIN public.product_dimension d
ON d.product_key = f.product_key
GROUP BY d.category_description
