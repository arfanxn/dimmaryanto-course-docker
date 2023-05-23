ARG NGINX_VERSION=latest
FROM nginx:${NGINX_VERSION}

ARG NGINX_CONF_TEMPLATE=default.template.conf
COPY ${NGINX_CONF_TEMPLATE} /etc/nginx/templates/default.conf.template

EXPOSE 80/tcp