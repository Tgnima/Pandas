FROM python:3.9-slim
RUN apt-get update && apt-get install -y \
    gcc \ 
    python3-dev \
    git \
    nano \
    && rm -rf /var/lib/apt/lists/*
COPY ./binder/requirements.txt ./app/requirements.txt

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker

WORKDIR /home/docker/app
ENV PATH "$PATH:/home/docker/.local/bin"
RUN pip install -r /app/requirements.txt
CMD bash -c "jupyter lab --collaborative --ip 0.0.0.0"
