# installations
pkg install node
npm install -g yarn
yarn global add truffle

# getting projects
sh ./get-stack.sh
if [ ! -d "./vote-dapp-back/vote-dapp-front/build/" ]

# building front
then
  yarn --cwd ./vote-dapp-back/vote-dapp-front/ install
  yarn --cwd ./vote-dapp-back/vote-dapp-front/ build
fi

# compiling contracts
if [ ! -d "./vote-dapp-back/vote-dapp-front/vote-dapp-contract/build/" ]
then
  cd ./vote-dapp-back/vote-dapp-front/vote-dapp-contract/
  truffle compile
  cd ../../../
fi

# launch app
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up
