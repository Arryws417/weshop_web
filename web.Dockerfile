FROM php:7.2-apache
LABEL maintainer="arry.wiandana666@gmail.com"
RUN docker-php-ext-install pdo pdo_mysql
COPY ./weshop /var/www/html/
HEALTHCHECK --interval=30s --timeout=5s CMD curl -f http://localhost/ || exit 1
