FROM debian:buster-slim

RUN apt update && apt-get install php-fpm  -y \
    && service php7.3-fpm start

# RUN apt update && apt-get install -y software-properties-common \
# &&  add-apt-repository -y ppa:ondrej/php \
# &&  apt install -y php7.3-fpm && apt install -y\
# php7.3-common php7.3-zip php7.3-curl php7.3-xml php7.3-xmlrpc \
# php7.3-json php7.3-mysql php7.3-pdo php7.3-gd php7.3-imagick php7.3-ldap \
# php7.3-imap php7.3-mbstring php7.3-intl php7.3-cli\
# php7.3-tidy php7.3-bcmath php7.3-opcache


CMD ["php-fpm7.3"]
