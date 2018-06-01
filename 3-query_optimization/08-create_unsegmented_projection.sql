CREATE PROJECTION public.product_dimension_optim
(
 product_key,
 product_version,
 product_description,
 sku_number,
 category_description,
 department_description,
 package_type_description,
 package_size,
 fat_content,
 diet_type,
 weight,
 weight_units_of_measure,
 shelf_width,
 shelf_height,
 shelf_depth,
 product_price,
 product_cost,
 lowest_competitor_price,
 highest_competitor_price,
 average_competitor_price,
 discontinued_flag
)
AS 
SELECT *
FROM public.product_dimension
ORDER BY product_dimension.product_key, product_dimension.product_version
UNSEGMENTED ALL NODES;

SELECT REFRESH();

SELECT ANALYZE_STATISTICS('');
