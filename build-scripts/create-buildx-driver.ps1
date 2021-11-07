docker buildx rm arm-x64
docker buildx create --platform linux/amd64,linux/arm64,linux/arm/v5,linux/arm/v6,linux/arm/v7,linux/arm/v8 --name arm-x64 --use
docker buildx inspect arm-x64 --bootstrap
docker buildx ls
