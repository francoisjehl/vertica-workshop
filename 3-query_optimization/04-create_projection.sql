CREATE PROJECTION public.inventory_fact_optim
(
 date_key,
 product_key,
 product_version,
 warehouse_key,
 qty_in_stock
)
AS
SELECT *
FROM public.inventory_fact
ORDER BY inventory_fact.product_key
SEGMENTED BY hash(inventory_fact.product_key) 
ALL NODES;

SELECT REFRESH();

SELECT ANALYZE_STATISTICS('');
