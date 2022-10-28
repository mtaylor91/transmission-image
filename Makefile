IMG ?= images.home.mtaylor.io/transmission
TAG ?= latest

.PHONY: all
all: docker-build

.PHONY: docker-build
docker-build:
	docker build . -t ${IMG}:${TAG}

.PHONY: docker-push
docker-push:
	docker push ${IMG}:${TAG}
