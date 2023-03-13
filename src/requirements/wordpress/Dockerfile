FROM debian:buster-slim

RUN apt-get update && apt-get install php-fpm -y \
    && apt install wget -y && \
    wget https://wordpress.org/latest.zip \ 
    && apt install unzip -y && unzip latest.zip

CMD ["bash"]
