FROM debian:12

RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./nginx.conf /etc/nginx/
COPY certs /etc/nginx/certs

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 443

# Start NGINX Server
CMD ["nginx", "-g", "daemon off;"]
