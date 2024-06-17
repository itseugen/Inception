FROM debian:latest

# Get NGINX
RUN apk update && apk add --noch-cache NGINX

# get new config
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

# Expose port
EXPOSE 

# Start NGINX Server
CMD ["nginx", "-g", "daemon off;"]