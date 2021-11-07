docker buildx build --build-arg PYTHON_VERSION=3.7 --platform linux/arm/v6,linux/arm/v7,linux/arm64,linux/amd64 --tag hugo54x/tarpit:latest --push .
