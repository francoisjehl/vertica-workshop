DROP TABLE IF EXISTS workshop.dim_client;

CREATE TABLE workshop.dim_client (
  client_id INT PRIMARY KEY ENCODING AUTO,
  client_name VARCHAR(255) ENCODING AUTO,
  city VARCHAR(255) ENCODING AUTO,
  country VARCHAR(255) ENCODING AUTO
)
ORDER BY client_id
UNSEGMENTED ALL NODES;
