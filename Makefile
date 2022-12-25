.PHONY:	help build build-local up down logs ps test
.DEFAULT_GOAL := help

DOCKER_TAG := latest

## build docker image to deploy
build:	docker build -t orange-bp-dev/gotodo:${DOCKER_TAG} \ --target deploy ./

## Build docker image to local development
build-local:	docker compose up build --no-cache

## Do docker compose up with hot reload
up:	docker compose up -d

## Do docker compose down
down:	docker compose down

## Tail docker compose logs
logs:	docker compose logs -f

## Check container status
ps:	docker compose ps

## Execute tests
test:	go test -race shuffle=on ./...