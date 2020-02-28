#!/bin/sh

set -x
MYSQL_CMD="mysql -u root -p${MYSQL_ROOT_PASSWORD} -h ${MYSQL_HOST} "
echo $MYSQL_CMD
echo "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\` ;" | `${MYSQL_CMD}`
echo "grant all privileges on ${MYSQL_DATABASE}.* to ${MYSQL_USER}@'localhost' identified by '${MYSQL_PASSWORD}';" | `${MYSQL_CMD}`
echo "grant all privileges on ${MYSQL_DATABASE}.* to ${MYSQL_USER}@'%' identified by '${MYSQL_PASSWORD}';" | `${MYSQL_CMD}`
echo "flush privileges;" | `${MYSQL_CMD}`
echo "finish ----"
