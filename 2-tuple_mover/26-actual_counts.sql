SELECT
  discontinued_flag,
  COUNT(0)
FROM product_dimension
GROUP BY 1;

