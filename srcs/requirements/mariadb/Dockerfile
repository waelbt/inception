FROM debian:buster

RUN apt-get update \
    && apt install mariadb-server -y

ARG MYSQL_DATABASE MYSQL_USER MYSQL_PASSWORD MYSQL_ROOT_PASSWORD

COPY setup_db_user.sh setup_db_user.sh

RUN chmod +x setup_db_user.sh && ./setup_db_user.sh

ENTRYPOINT  [ "mysqld", "--bind-address=0.0.0.0" ]
