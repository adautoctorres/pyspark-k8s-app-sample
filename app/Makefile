DOCKER_IMAGE ?= pyspark-app:latest
DOCKER_FILE ?= Dockerfile

config:
	@echo "Configurações..."

build:
	docker build -t $(DOCKER_IMAGE) -f $(DOCKER_FILE) .