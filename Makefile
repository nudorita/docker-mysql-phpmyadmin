COMPOSE=docker-compose -f docker/docker-compose.yml

start:
	$(COMPOSE) build
	$(COMPOSE) up -d

stop:
	$(COMPOSE) stop

reload:
	$(COMPOSE) down
	$(COMPOSE) build
	$(COMPOSE) up -d