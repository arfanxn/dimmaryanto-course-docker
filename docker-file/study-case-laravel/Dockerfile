ARG PHP_VERSION=8.1-apache
FROM php:${PHP_VERSION} as php-image

# install dependencies for laravel
RUN apt-get update && apt-get install -y \
  curl \
  git \
  libicu-dev \
  libpq-dev \
  libmcrypt-dev \
  openssl \
  unzip \
  vim \
  zip \
  zlib1g-dev \
  libpng-dev \
  libzip-dev && \
rm -r /var/lib/apt/lists/*

# install extension for laravel
RUN pecl install mcrypt-1.0.6 && \
  docker-php-ext-install fileinfo exif pcntl bcmath gd && \
  docker-php-ext-enable mcrypt && \
  a2enmod rewrite

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

FROM php-image as executeable

ENV APP_SOURCE=/var/www/php
ENV APP_DEBUG=false
ENV APP_URL=""
ENV APP_ENV=production

# Set working directory
WORKDIR $APP_SOURCE

# set DocumentRoot to lavavel framework uploaded
RUN sed -i "s|DocumentRoot /var/www/html|DocumentRoot ${APP_SOURCE}/public|g" /etc/apache2/sites-enabled/000-default.conf

# copy source laravel
COPY . .

# give full access
RUN mkdir -p public/storage && \
chmod -R 777 storage/* && \
chmod -R 777 public/storage

# install laravel dependencies
RUN php -r "file_exists('.env') || copy('.env.example', '.env');" && \
    composer install --no-interaction --optimize-autoloader --no-dev && \
    php artisan package:discover --ansi && \
    php artisan key:generate --ansi --force && \
    php artisan optimize

VOLUME ${APP_SOURCE}/storage

# expose port default 80
EXPOSE 80/tcp
