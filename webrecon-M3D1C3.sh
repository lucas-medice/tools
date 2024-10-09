#!/bin/bash

# FERRAMENTA PARA RECONHECIMENTO DE ARQUIVOS E DIRETÓRIOS WEB
# USAGE: ./webrecon-M3D1C3.sh [WORDLIST] [TARGET]

for palavra in $(cat $1)
do
    resposta=$(curl -s -H "User-Agent: M3D1C3" -o /dev/null -w "%{http_code}" $2/$palavra/)
    
    if [ "$resposta" == "200" ]; then
        echo "Diretório encontrado: $2/$palavra"
    fi
done
