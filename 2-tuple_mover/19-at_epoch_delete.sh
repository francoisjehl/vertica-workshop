#!/bin/bash

query="SELECT GET_AHM_EPOCH()"
epoch=`/opt/vertica/bin/vsql -h 172.17.0.4 -U dbadmin -d docker -c "$query" -t`

/opt/vertica/bin/vsql -e -h 172.17.0.4 -U dbadmin -d docker -c "SELECT COUNT(0) FROM workshop.fact_sales"
/opt/vertica/bin/vsql -e -h 172.17.0.4 -U dbadmin -d docker -c "AT EPOCH $epoch SELECT COUNT(0) FROM workshop.fact_sales"

