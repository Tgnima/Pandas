start-repo-2-docker:
	jupyter-repo2docker .
start-repo-2-docker-editable:
	jupyter-repo2docker --editable .

start-docker:
	make build-docker
	make launch-docker
build-docker:
	docker build -t python_data_science .
launch-docker:
	docker run -it -v ${PWD}:/home/docker/app -p 8888:8888 python_data_science
