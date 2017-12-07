#!/bin/bash

echo "Iniciando docker...";
docker-compose start;

echo "Iniciando sails..."
docker exec -u user -it bulkdockerenvironment_sails_1 bash -c "cd /home/user/workspace/go5-bulk/; source ~/.nvm/nvm.sh; yarn install; yarn start"