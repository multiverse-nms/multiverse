#!/usr/bin/env bash

set -e

# localhost would work for deyployment with local GUI  
export SERVER_IP="localhost"

# topology:
export MYSQL_PASSWORD="12345"

# export env variables for polatis switches credentials: <username>:<password>
# names of variables must be the same as node names in topology. See examples below
export B205="admin:root"
export GCF="admin:root"


# Stop containers
docker-compose -f docker-compose.yml stop

# Start persistence containers
docker-compose -f docker-compose.yml up -d mysql mongo activemq
sleep 15

# Start topology service
docker-compose -f docker-compose.yml up -d topology-microservice
sleep 30

# Start other services
docker-compose -f docker-compose.yml up
