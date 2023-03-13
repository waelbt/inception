FROM debian:buster-slim

RUN apt-get update && apt-get install -y nginx \
    && apt-get install openssl \
    && openssl genrsa -out private.key 2048 \ 
    && openssl req -new -key private.key -out csr.pem -subj "/C=/ST=/L=/O=/CN=yourdomain.com" \
    && openssl x509 -req -days 365 -in csr.pem -signkey private.key -out certificate.crt

EXPOSE 443

COPY   ./conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
