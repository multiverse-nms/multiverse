#!/usr/bin/env bash

set -e

export SERVER_IP="localhost"

# topology:
export MYSQL_PASSWORD="12345"

# polatis:
export B205="admin:root"
export GCF="admin:root"


# Stop containers
docker-compose -f docker-compose.yml stop

# Start persistence containers
docker-compose -f docker-compose.yml up -d mysql mongo activemq postgresql keycloak
sleep 60

# Start topology service
docker-compose -f docker-compose.yml up -d topology-microservice
sleep 60

# Start other services
docker-compose -f docker-compose.yml up
