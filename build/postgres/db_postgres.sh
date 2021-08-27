#!/bin/bash

# Criação da database para o protheus, postgres
set -e

psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE protheus;
EOSQL