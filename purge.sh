#!/usr/bin/env bash

sudo rm -rf *data
sudo rm -rf metabase
sudo rm -rf jupyter

docker volume rm $(docker volume ls -q)
