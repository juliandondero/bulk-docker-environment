#!/bin/bash

echo "Iniciando docker...";
docker-compose start;

echo "**** Iniciando workers ****"
docker exec -u user -it bulkdockerenvironment_sails_1 bash -c "cd /home/user/workspace/go5-bulk/server/; source ~/.nvm/nvm.sh; yarn install; node index.js > /dev/stdout &";
docker exec -u user -it bulkdockerenvironment_sails_1 bash -c "cd /home/user/workspace/go5-bulk/server/; source ~/.nvm/nvm.sh; yarn install; node loader.js > /dev/stdout &";

echo "**** Iniciando sails en http://127.0.0.1:1337 ****"
docker exec -u user -it bulkdockerenvironment_sails_1 bash -c "cd /home/user/workspace/go5-bulk/; source ~/.nvm/nvm.sh; yarn install; yarn start > /dev/stdout";
