FROM debian:12

# Get NGINX
RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# RUN apk update && apk add --noch-cache NGINX

# get new config
# RUN rm /etc/nginx/conf.d/default.conf
# RUN rm /etc/nginx/nginx.conf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
# # COPY default.conf /etc/nginx/sites-available/default
# # COPY nginx.conf /etc/nginx/
# # COPY default.conf /etc/nginx/conf.d/default.conf
# COPY default.conf /etc/nginx/http.d


COPY ./nginx.conf /etc/nginx/
COPY certs /etc/nginx/certs

# Expose port
# EXPOSE 80
EXPOSE 443

# Test!!!
COPY index.html /usr/share/nginx/html/index.html

# Start NGINX Server
CMD ["nginx", "-g", "daemon off;"]
# CMD ["sleep", "1000"]