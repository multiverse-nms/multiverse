#!/usr/bin/env bash

set -e

export EXTERNAL_IP="127.0.0.1"

# GUI:
export SERVER_IP="127.0.0.1"

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


# Get this script directory (to find yml from any directory)
export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Stop containers
docker-compose -f $DIR/docker-compose.yml stop

# Start persistence containers
docker-compose -f $DIR/docker-compose.yml up -d mysql mongo activemq
sleep 60

# Start topology service
docker-compose -f $DIR/docker-compose.yml up -d topology-microservice
sleep 60

# Start other services
docker-compose -f $DIR/docker-compose.yml up