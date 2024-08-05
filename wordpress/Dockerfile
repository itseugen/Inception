FROM debian:12

WORKDIR /var/www/html

RUN apt-get update \
	&& apt install -y php php8.2-fpm php8.2-mysqli wget \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /var/www/html /run/php

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
		chmod +x wp-cli.phar && \
		mv wp-cli.phar /usr/local/bin/wp && \
		wp core download --path=/var/www/html --version=6.5.2 --allow-root

COPY www.conf /etc/php/8.2/fpm/pool.d/www.conf

COPY init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh

RUN chown -R www-data:www-data /var/www/
RUN chown www-data:www-data /var/log/
RUN chown -R www-data:www-data /run/php

USER www-data

EXPOSE 9000

CMD ["/usr/local/bin/init.sh"]