#!/bin/bash
echo "Hosting healthcheck endpoint here: $ASPNETCORE_URLS"
cd ./opt/healthcheck
dotnet healthcheck.dll &
echo "starting mysql"
docker-entrypoint.sh mysqld --datadir=/var/lib/mysql2
