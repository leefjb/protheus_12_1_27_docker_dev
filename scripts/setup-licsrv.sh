#!/bin/bash

# Script de criação do ambiente protheus 12.1.27, criação de base teste empresa 99
# Setando diretório raiz e base do protheus
TOTVS_PATH=/srv/totvs
#PROTHEUS_PATH=/srv/totvs/protheus

# Criando diretórios do ambiente protheus
#mkdir -p ${PROTHEUS_PATH}
mkdir ${TOTVS_PATH}/licenserver

# Removendo conteúdo da pasta tmp
rm -rf /tmp/*