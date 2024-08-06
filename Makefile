ENV_FILE=.env

define prompt_var
  @read -p "$(1): " value; \
  echo $(2)=$$value >> $(ENV_FILE)
endef

all: $(ENV_FILE)
	docker-compose up --build -d

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

re: fclean all

fclean: down
	docker rmi nginx wordpress mariadb || true
	docker volume rm github_mariadb_data || true
	docker volume rm github_wordpress_data || true
	yes | docker system prune

$(ENV_FILE):
	chmod +x create_env.sh
	./create_env.sh

new_env: fclean_env $(ENV_FILE)

fclean_env:
	rm -f .env

.PHONY: all help build up down restart re fclean fclean_env new_env