all: help

help:
	@echo "Usage:"
	@echo "	make build			Build Docker images!"
	@echo "	make up				Start Docker containers!"
	@echo "	make down			Stop Docker containers!"
	@echo "	make restart		Restart Docker containers!"

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart
