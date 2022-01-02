FROM python:3.8.12-slim-bullseye

RUN pip install pip --upgrade
RUN pip install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ssh rsync 

WORKDIR /work
