FROM debian:latest

# Get NGINX
RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY ./index.html /usr/share/nginx/html/index.html