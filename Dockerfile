FROM docker:latest

RUN apk add --no-cache py-pip \
 && pip install --no-cache-dir docker-compose
