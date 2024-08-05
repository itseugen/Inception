FROM debian:12

RUN apt-get update && apt-get install -y nginx && apt-get install openssl && apt-get clean \ 
		&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./nginx.conf /etc/nginx/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/server.key \
    -out /etc/ssl/certs/server.crt \
    -subj "/C=DE/ST=Baden Wuerttemberg/L=Heilbronn/O=42 Heilbronn/OU=42 students/CN=eweiberl"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
