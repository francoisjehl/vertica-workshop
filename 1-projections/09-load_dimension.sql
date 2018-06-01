TRUNCATE TABLE workshop.dim_client;
COPY workshop.dim_client
FROM LOCAL './_dim_client.csv' 
DELIMITER ','
ENCLOSED BY '"'
SKIP 1
ABORT ON ERROR
DIRECT;
