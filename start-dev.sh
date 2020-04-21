sh ./get-stack.sh

export $(cat .env | sed 's/#.*//g' | xargs)

docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up
# please launch back in another terminal