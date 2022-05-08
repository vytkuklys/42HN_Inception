FROM debian:buster

RUN apt-get update && apt-get install -y \
    php7.3-fpm \
    php7.3-mysql \
    mariadb-client \
    wget && \
    rm -rf /var/lib/apt/lists/*
COPY ./www.conf /etc/php/7.3/fpm/pool.d
WORKDIR /var/www
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xzvf latest.tar.gz
COPY ./wp-config.php ./wordpress 
RUN mkdir /run/php
EXPOSE 9000
RUN groupadd -r secure && useradd -g secure secure
RUN chown -R secure:secure /run /var/log
USER secure

CMD ["php-fpm7.3", "-F"]
