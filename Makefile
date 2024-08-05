all:
	docker compose up --build -d

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
	docker rmi nginx wordpress mariadb
	docker volume rm github_mariadb_data
	docker volume rm github_wordpress_data
	yes | docker system prune