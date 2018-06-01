#!/bin/bash

query="SELECT DISTINCT sal_storage_id
FROM storage_containers 
WHERE projection_name ILIKE 'fact_sales_b%' and node_name like '%01';"

sals=`/opt/vertica/bin/vsql -h 172.17.0.4 -U dbadmin -d docker -c "$query" -t`


while read -r sal; do
  docker exec -t docker-vertica_node_1_1 /bin/bash -c "ls /opt/vertica/data/docker/v_docker_node0001_data/*/$sal*"
done <<< "$sals"

