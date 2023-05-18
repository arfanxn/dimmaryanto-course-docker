## first stage
FROM php:7.3-apache as php_composer
# add composer into php v7.3 container
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer


## second stage
# new stage node for install npm dependencies
FROM node:14-alpine3.10 as node_install
WORKDIR /var/www/html
COPY package.json .
RUN npm install --prod


# using php_composer image
FROM php_composer

ENV HTML_FOLDER=/var/www/html
LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"

WORKDIR ${HTML_FOLDER}

# copy node_modules folder from last build
COPY --from=node_install /var/www/html/node_modules node_modules
COPY index.html .

HEALTHCHECK --interval=10s --timeout=3s --retries=1 --start-period=3s \
CMD curl -f http://localhost/ || exit 1