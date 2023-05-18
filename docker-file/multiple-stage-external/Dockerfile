FROM php:7.3-apache

ENV HTML_FOLDER=/var/www/html

LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"

WORKDIR ${HTML_FOLDER}

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

HEALTHCHECK --interval=10s --timeout=3s --retries=1 --start-period=3s \
CMD curl -f http://localhost/ || exit 1