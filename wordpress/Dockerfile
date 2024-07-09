FROM debian:12

# Install dependencies for wp
# RUN apt-get update && apt-get install -y php php-fpm php-mysql wget && \
	# apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update \
	&& apt install -y php php8.2-fpm php-mysql wget \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY www.conf /etc/php/7.4/fpm/pool.d/

WORKDIR /var/www/html
RUN wget -O wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
	&& tar -xzf wordpress.tar.gz --strip-components=1 \
	&& rm wordpress.tar.gz \
	&& chown -R www-data:www-data /var/www/html/

COPY wp-conf.php /var/www/html/wordpress/

# RUN which php-fpm

# Start FPM server
# CMD [ "php-fpm", "-F"]

CMD ["php-fpm8.2", "-F"]
