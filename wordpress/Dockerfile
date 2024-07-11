FROM debian:12

# Install dependencies for wp
# RUN apt-get update && apt-get install -y php php-fpm php-mysql wget && \
	# apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update \
	&& apt install -y php php8.2-fpm php-mysql wget \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# COPY www.conf /etc/php/7.4/fpm/pool.d/

WORKDIR /var/www/html

RUN wget -O wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
	&& tar -xzf wordpress.tar.gz --strip-components=1 \
	&& rm wordpress.tar.gz \
	&& chown -R www-data:www-data /var/www/html/

# COPY wp-config.php /var/www/html/

COPY init.sh /etc/
RUN chmod +x /etc/init.sh


RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
# RUN wp core download --allow-root --path=/var/www/html --version=6.5.2

# RUN which php-fpm
# Start FPM server
# CMD [ "php-fpm", "-F"]
# RUN chown www-data:www-data /var/www/html/wp-config.php
# RUN chown -R www-data:www-data /var/www/html
# CMD ["php-fpm8.2", "-F"]

# USER www-data

CMD ["/etc/init.sh"]
# CMD ["ls"]
