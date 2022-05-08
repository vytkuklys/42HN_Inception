FROM debian:buster

RUN apt-get update && apt-get install -y \
    mariadb-server && \
    rm -rf /var/lib/apt/lists/*
COPY ./50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./setup.sql /
RUN service mysql start && \
    mysql < setup.sql
EXPOSE 3306
CMD ["mysqld_safe"]
