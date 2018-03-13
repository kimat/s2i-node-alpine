
IMAGE_NAME = kimat/s2i-node-alpine:`cat VERSION`

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: publish
publish:
	docker login
	docker push $(IMAGE_NAME)
