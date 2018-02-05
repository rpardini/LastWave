FROM php:7.0-apache
ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]

ADD . /var/www/html

# Build and run:
# docker build -t lastwave:latest .
# docker run -d --name lastwave -p 81:80 lastwave:latest
# docker logs --details --follow lastwave
# docker stop lastwave ; docker rm lastwave

# At once:
# docker stop lastwave ; docker rm lastwave; docker build -t lastwave:latest . ; docker run -d --name lastwave -p 81:80 lastwave:latest ; docker logs --details --follow lastwave ;