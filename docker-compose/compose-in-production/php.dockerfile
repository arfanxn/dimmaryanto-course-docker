FROM php:latest
ENV DEBUG=false APP_ENV=production DB_HOST=localhost DB_PORT=5432 DB_USER=admin DB_NAME=admin DB_PASSWD=admin
WORKDIR /var/www/html

COPY index.php .

VOLUME /var/www/html/storage
EXPOSE 80/tcp
