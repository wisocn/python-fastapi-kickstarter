# Strict mode
set shell := ["bash", "-euo", "pipefail", "-c"]

export GIT_SHA := `git rev-parse --short HEAD`

[private]
default:
	@ just --list --unsorted

run: build
	docker-compose up -d

build:
	poetry install --no-root
	poetry lock

teardown:
	docker-compose down

request-api:
	curl localhost | jq .
