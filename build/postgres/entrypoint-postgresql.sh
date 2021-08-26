#!/bin/bash

# Adicionando configurações aos arquivos .ini
/bin/sed 's/{{POSTGRES}}/'"${TOPALIAS}"'/' -i /etc/odbc.ini
/bin/sed 's/{{POSTGRES}}/'"${TOPALIAS}"'/' -i /srv/totvs/dbaccess/dbaccess.ini
/bin/sed 's/{{IP_LICENSERVER}}/'"${IP_LICENSERVER}"'/' -i /srv/totvs/dbaccess/dbaccess.ini

# Iniciando serviços postgres e dbaccess
/docker-entrypoint.sh postgres & cd /srv/totvs/dbaccess/multi && ./dbaccess64
