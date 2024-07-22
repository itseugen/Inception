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

re:
	make down && make build && make up && docker ps

fclean: down
	docker rmi nginx wordpress mariadb &&\
	- docker volume rm $(docker volume ls) &&\
	yes | docker system prune