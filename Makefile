PROJECTNAME=openai-golang-api

help:
	@echo "make init          :   gets the necessary godotenv Go library"
	@echo "make build         :   builds the binary in Go"
	@echo "make run           :   runs the source code in Go"
	@echo "make docker-build  :   builds the docker image"
	@echo "make docker-run    :   runs the docker image"
	@echo "make docker-clean  :   stops and deletes both the container and image"

init:
	@cd src/ && go install

build:
	@cd src/ && go build -o ../bin/${PROJECTNAME} .

exec:
	@cd bin/ && ./${PROJECTNAME}

run:
	@cd src/ && go run .

docker-build:
	@docker build -t ${PROJECTNAME} .

docker-run:
	@docker run -v "$(PWD)":/go/src/app ${PROJECTNAME}

docker-clean:
	@docker stop $$(docker ps -q --filter "ancestor=${PROJECTNAME}")
	@docker rm $$(docker ps -a -q --filter "ancestor=${PROJECTNAME}")
	@docker rmi ${PROJECTNAME}