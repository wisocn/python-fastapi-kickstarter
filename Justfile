# Strict mode
set shell := ["bash", "-euo", "pipefail", "-c"]

export GIT_SHA := `git rev-parse --short HEAD`

[private]
default:
	@ just --list --unsorted

run: build
	docker-compose up -d 

run-local: build
	uvicorn api.main:app

build:
	poetry install --no-root
	poetry lock

teardown:
	docker-compose down

cleanup:
	docker image prune --all

request-api:
	curl localhost | jq .
