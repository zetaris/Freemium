#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE metastore;
    CREATE DATABASE audit;
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgres;
    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO postgres;
EOSQL
echo "creating db done"
