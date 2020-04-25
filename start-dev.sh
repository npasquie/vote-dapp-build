sh ./get-stack.sh

export $(cat .env | sed 's/#.*//g' | xargs)