sh ./get-stack.sh
if [ ! -d "./vote-dapp-back/vote-dapp-front/build/" ]
then
  cd ./vote-dapp-back/vote-dapp-front/
  yarn --cwd ./vote-dapp-back/vote-dapp-front/ build
  cd ../../
fi
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up
