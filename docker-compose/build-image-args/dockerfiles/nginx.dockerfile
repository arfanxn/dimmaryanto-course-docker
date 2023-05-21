ARG NGINX_VERSION=latest
FROM nginx:${NGINX_VERSION}

WORKDIR /usr/share/nginx/html
EXPOSE 80/tcp