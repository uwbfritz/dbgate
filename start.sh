#!/usr/bin/env bash


#if [ "$EUID" -ne 0 ]
#  then echo "Please run as root"
#  exit
#fi

sudo mkdir -p jupyter

sudo chmod -R 7777 jupyter

sudo mkdir -p mssql-data

sudo chown -R 10001:10001 mssql-data

sudo chmod -R 7777 mssql-data

docker-compose pull

docker-compose up -d

sudo chown -R 10001:10001 mssql-data

sudo chmod -R 7777 mssql-data

sudo chown -R 7777 jupyter
