DROP TABLE IF EXISTS workshop.fact_sales;

CREATE TABLE workshop.fact_sales (
  client_id INT ENCODING AUTO,
  sales NUMERIC(18,4) ENCODING AUTO
)
ORDER BY client_id
SEGMENTED BY HASH(client_id) ALL NODES;

