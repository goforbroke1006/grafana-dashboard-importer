CI_REGISTRY=docker.io
SERVICE_OWNER=goforbroke1006
SERVICE_NAME=grafana-dashboard-importer

TAG=$(shell git describe --abbrev=0 --tags | echo '0.0.1')
CI_COMMIT_REF_NAME=$(shell git describe --abbrev=0 --tags | echo '0.0.1')

image:
	docker buildx build \
		--platform linux/amd64,linux/arm/v7,linux/arm64 \
		--build-arg APPLICATION_FILE=./build/${SERVICE_NAME} \
		-t ${CI_REGISTRY}/${SERVICE_OWNER}/${SERVICE_NAME}:${CI_COMMIT_REF_NAME} \
		-t ${CI_REGISTRY}/${SERVICE_OWNER}/${SERVICE_NAME}:latest \
		--push .