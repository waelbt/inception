FROM debian:buster

RUN apt-get update && apt-get install -y php7.3 php7.3-fpm php7.3-mysql mariadb-client curl sendmail

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

WORKDIR /var/www/html/

COPY load_wp_file.sh .

RUN chmod +x load_wp_file.sh

RUN mkdir -p /run/php

ENTRYPOINT [ "./load_wp_file.sh" ]

CMD ["php-fpm7.3", "-R", "-F"]
