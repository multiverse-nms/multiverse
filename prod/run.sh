#!/usr/bin/env bash

set -e

export EXTERNAL_IP="127.0.0.1"

export SERVER_IP="10.11.200.125"

# api-gateway:
export TOKEN_PHRASE="keyboard cat"

# account:
export ADMIN_USERNAME="admin"
export ADMIN_PASSWORD="admin"

# topology:
export MYSQL_PASSWORD="12345"

# polatis:
export B205="admin:root"
export GCF="admin:root"


# Stop containers
docker-compose -f docker-compose.yml stop

# Start persistence containers
docker-compose -f docker-compose.yml up -d mysql mongo activemq
sleep 60

# Start topology service
docker-compose -f docker-compose.yml up -d topology-microservice
sleep 60

# Start other services
docker-compose -f docker-compose.yml up
