FROM debian:latest

# Install dependencies for wp
RUN apk update && apk add --no-cache \
	php7 \
	php7-fpm \
	php7-mysqli \
	php7-json \
	php7-session \
	php7-zlib \
	php7-gd \
	php7-curl \
	php7-mbstring \
	php7-xml \
	php7-zip \
	curl \
	tar \
	&& mkdir -p /run/php

# Getting wordpress
RUN curl -O https://wordpress.org/latest.tar.gz \
	&& tar -xzf latest.tar.gz \
	&& rm latest.tar.gz \
	&& mv wordpress /var/www/html/ \
	&& chown -R www-data:www-data /var/www/html/

# Epose port for PHP
EXPOSE 

# Start FPM server
CMD [ "php-fpm7", "-F"]
