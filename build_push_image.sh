# Build image with tag "item-app" version 1
docker build -t item-app:v1 .

# List local images
docker image ls

# Tag image with GitHub Container Registry format
docker tag item-app:v1 ghcr.io/rulim34/item-app:v1

# Login to GitHub Container Registry
echo $PAT | docker login ghcr.io -u rulim34 --password-stdin

# Push image to GitHub Container Registry
docker push ghcr.io/rulim34/item-app:v1

