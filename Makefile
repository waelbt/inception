DOCKER_COMPOSE 	=  docker compose 

FILE            = srcs/docker-compose.yml

CONTAINER_IDS   = "$$(docker ps -aq)"

start:
	@mkdir -p /home/waboutzo/data/wordpress
	@mkdir -p /home/waboutzo/data/dbdata
	@$(DOCKER_COMPOSE) -f $(FILE) up

down:
	@$(DOCKER_COMPOSE) -f $(FILE) down

cclean:
	@if [ -n "$(CONTAINER_IDS)" ]; then docker stop $(CONTAINER_IDS); docker rm $(CONTAINER_IDS); fi
vclean :
	@rm -rf /home/waboutzo/data/
	@if [ -n "$$(docker volume ls -q)" ]; then docker volume rm $$(docker volume ls -q); fi

clean: down cclean vclean
	@docker network prune -f
	@docker image prune -af
	@docker system prune

re: stop clean start

.PHONY: clean start stop re
