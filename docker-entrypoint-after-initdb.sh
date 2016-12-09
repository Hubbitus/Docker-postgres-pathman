#!/usr/bin/env bash

mkdir $PGDATA/conf.d
sed -i "s/#include_dir = 'conf.d'/include_dir = 'conf.d'/" "$PGDATA/postgresql.conf"
mv /docker-entrypoint-initdb.d/*.conf $PGDATA/conf.d/
