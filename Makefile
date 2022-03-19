start:
	make build-docker
	make launch-docker
build-docker:
	docker build -t python_data_science .
launch-docker:
	docker run -it -v ${PWD}:/home/docker/app -p 8888:8888 python_data_science
