#!/usr/bin/env bash

set -e

sleep 3

./scripts/pgsql_restore.sh 2024-08-19.dump

gradle test

./scripts/pgsql_restore.sh 2024-08-19.dump

cd /usr/local/tomcat/bin

./catalina.sh run
