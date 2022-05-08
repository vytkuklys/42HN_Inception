DC=sudo docker-compose -f ./srcs/docker-compose.yml

up:
	$(DC) up -d

down:
	$(DC) down

# clean:
# 	sudo docker stop $$(sudo docker ps -qa | awk '{print $1}') ; \
# 	sudo docker rm $$(sudo docker ps -qa | awk '{print $1}') ; \
# 	sudo docker rmi -f $$(sudo docker images -qa) ; \
# 	sudo docker volume rm $$(sudo docker volume ls -q) ; \
# 	sudo docker network rm $$(sudo docker network ls -q) 2>/dev/null