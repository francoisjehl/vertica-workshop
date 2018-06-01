COPY workshop.fact_sales 
FROM LOCAL './_fact_sales.csv' 
DELIMITER ','
SKIP 1
ABORT ON ERROR
DIRECT;
