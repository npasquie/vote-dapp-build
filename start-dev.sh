if [ ! -d "./vote-dapp-back/" ]
then
  git clone https://github.com/npasquie/vote-dapp-back.git
fi

docker-compose -f docker-compose.yml -f docker-compose.dev.yml build
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up