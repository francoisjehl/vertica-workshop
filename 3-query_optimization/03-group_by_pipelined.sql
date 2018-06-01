EXPLAIN
SELECT 
  warehouse_key,
  SUM(qty_in_stock) qty_in_stock
FROM public.inventory_fact
GROUP BY warehouse_key;

