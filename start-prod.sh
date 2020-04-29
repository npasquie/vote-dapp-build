sh ./get-stack.sh
if [ ! -d "./vote-dapp-back/vote-dapp-front/build/" ]
then
  yarn --cwd ./vote-dapp-back/vote-dapp-front/ build
fi
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up
