FROM php:latest as php-image

ENV HTML_FOLDER=/var/www/html

WORKDIR ${HTML_FOLDER}

COPY php/index.php . 