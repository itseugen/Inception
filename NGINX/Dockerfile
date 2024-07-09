FROM debian:12

# Get NGINX
RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./nginx.conf /etc/nginx/
COPY certs /etc/nginx/certs

EXPOSE 443

# Test!!!
COPY index.html /usr/share/nginx/html/index.html

# Start NGINX Server
CMD ["nginx", "-g", "daemon off;"]
# CMD ["sleep", "1000"]