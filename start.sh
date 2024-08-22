#!/usr/bin/env bash


if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mkdir -p mssql-data

chown -R 10001:10001 mssql-data

docker-compose pull

docker-compose up -d

chown -R 10001:10001 mssql-data
