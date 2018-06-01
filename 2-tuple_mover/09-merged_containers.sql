SELECT node_name, projection_name, storage_type, storage_oid, sal_storage_id, start_epoch, end_epoch
FROM storage_containers 
WHERE projection_name ILIKE 'fact_sales_b%' 
ORDER BY 1,2;
