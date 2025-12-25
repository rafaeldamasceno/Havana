#!/bin/bash

MYSQL_HOSTNAME="${MYSQL_HOSTNAME:-mariadb}"
MYSQL_PORT="${MYSQL_PORT:-3306}"
MYSQL_USERNAME="${MARIADB_USER:-root}"
MYSQL_PASSWORD="${MARIADB_PASSWORD:-goldfish}"
MYSQL_DATABASE="${MARIADB_DATABASE:-havana}"

sed -i -E "s/(mysql.hostname=)(.*)/\1$MYSQL_HOSTNAME/g" server.ini
sed -i -E "s/(mysql.port=)(.*)/\1$MYSQL_PORT/g" server.ini
sed -i -E "s/(mysql.username=)(.*)/\1$MYSQL_USERNAME/g" server.ini
sed -i -E "s/(mysql.password=)(.*)/\1$MYSQL_PASSWORD/g" server.ini
sed -i -E "s/(mysql.database=)(.*)/\1$MYSQL_DATABASE/g" server.ini
sed -i -E "s/(rcon.bind=)(.*)/\10.0.0.0/g" server.ini
sed -i -E "s/(server.bind=)(.*)/\10.0.0.0/g" server.ini
sed -i -E "s/(mus.bind=)(.*)/\10.0.0.0/g" server.ini

./Havana-Server
