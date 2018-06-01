TRUNCATE TABLE workshop.fact_sales;

COPY workshop.fact_sales
FROM LOCAL './_fact_sales.csv'
DELIMITER ','
SKIP 1
ABORT ON ERROR
DIRECT;

COPY workshop.fact_sales 
FROM LOCAL './_fact_sales.csv' 
DELIMITER ','
SKIP 1
ABORT ON ERROR;
