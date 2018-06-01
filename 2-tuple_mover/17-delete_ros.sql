DELETE /*+DIRECT*/ FROM workshop.fact_sales WHERE client_id < 3000;
COMMIT
