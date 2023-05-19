FROM debian:buster

RUN apt-get update && apt-get install -y nginx


ARG KEY_PATH CERT_PATH

COPY conf/ /etc/nginx/conf.d/

COPY cert /usr/local/nginx/conf/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
