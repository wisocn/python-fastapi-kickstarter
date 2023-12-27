# Strict mode
set shell := ["bash", "-euo", "pipefail", "-c"]

run: build
	docker-compose up -d

build:
	poetry install
	poetry lock

teardown:
	docker-compose down

request-api:
	curl localhost | jq .
