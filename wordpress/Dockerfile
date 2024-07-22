FROM debian:12

RUN apt-get update \
	&& apt install -y php php8.2-fpm php-mysql wget \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /var/www/html

# RUN wget -O wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
# 	&& tar -xzf wordpress.tar.gz --strip-components=1 \
# 	&& rm wordpress.tar.gz \
# 	&& chown -R www-data:www-data /var/www/html/

RUN chown -R www-data:www-data /usr/sbin/php-fpm8.2

COPY init.sh /etc/
RUN chmod +x /etc/init.sh

RUN chown -R www-data:www-data /etc/init.sh

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN sed -i "s/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/" /etc/php/8.2/fpm/pool.d/www.conf

RUN chown www-data:www-data /var/log/
USER www-data

EXPOSE 9000

CMD ["/etc/init.sh"]