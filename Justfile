run: prepare
	flask run -p 5000

prepare:
	docker-compose up -d

build:
	poetry install
	poetry lock
