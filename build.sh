VERSION=$(cat VERSION)

IMAGE=deniusmalog/hdm:$VERSION

#docker build --no-cache -t $DOCKER_REGISTRY_URL/$IMAGE -f Dockerfile .
#docker build -t $DOCKER_REGISTRY_URL/$IMAGE -f Dockerfile .
docker build -t $IMAGE -f Dockerfile .

#docker push $DOCKER_REGISTRY_URL/$IMAGE
