sh ./get-stack.sh
if [ ! -d "./vote-dapp-back/vote-dapp-front/build/" ]
then
  echo "you need to go in front project and build it (yarn build)"
else
  docker-compose -f docker-compose.yml build
  docker-compose -f docker-compose.yml up
fi
