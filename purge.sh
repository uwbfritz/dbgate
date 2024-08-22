#!/usr/bin/env bash

rm -rf *data

docker volume rm $(docker volume ls -q)
