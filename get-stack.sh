if [ ! -d "./vote-dapp-back/" ]
then
  git clone https://github.com/npasquie/vote-dapp-back.git
fi

if [ ! -d "./vote-dapp-back/vote-dapp-front/" ]
then
  git clone https://github.com/npasquie/vote-dapp-front.git
fi

if [ ! -d "./vote-dapp-back/vote-dapp-front/vote-dapp-contract" ]
then
  git clone https://github.com/npasquie/vote-dapp-contract.git
fi