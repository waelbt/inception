FROM debian:buster-slim

RUN apt-get update \
    && apt install mariadb-server mariadb-client -y \
    && service mysql start

# COPY entrypoint.sh docker-entrypoint-initdb.d

# RUN ["chmod", "+x", "docker-entrypoint.sh"]

CMD [ "mysqld"]