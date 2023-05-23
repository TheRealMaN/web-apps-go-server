# docker buildx create --use
# docker buildx build --platform=linux/amd64,linux/arm64 --tag "therealman/web-app-go-server:latest" --tag "therealman/web-app-go-server:1.0.0" --push .

docker build build --tag "therealman/web-app-go-server:latest" --tag "therealman/web-app-go-server:1.0.0" --push .