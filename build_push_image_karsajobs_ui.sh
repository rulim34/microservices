# Build image with tag "ghcr.io/rulim34/karsajobs-ui" version latest
docker build -t ghcr.io/rulim34/karsajobs-ui:latest .

# Login to GitHub Container Registry
echo $PAT | docker login ghcr.io -u rulim34 --password-stdin

# Push image to GitHub Container Registry
docker push ghcr.io/rulim34/karsajobs-ui:latest
