EXPLAIN SELECT
  d.calendar_year,
  SUM(f.qty_in_stock) qty_in_stock
FROM public.inventory_fact f
JOIN public.date_dimension d
ON d.date_key = f.date_key
GROUP BY 1
