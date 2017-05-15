#!/bin/bash
echo "Hosting healthcheck endpoint here: $ASPNETCORE_URLS"
cd ./opt/healthcheck
dotnet healthcheck.dll &
echo "starting mysql"
docker-entrypoint.sh mysqld --datadir=/var/lib/mysql2 --character-set-server=utf8 --collation-server=utf8_general_ci 
