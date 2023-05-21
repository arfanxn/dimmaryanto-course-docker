FROM nginx:latest
ENV APPLICATION_PORT=80 NGINX_ROOT_DOCUMENT=/usr/share/nginx/html BACKEND_HOST=webapp BACKEND_PORT=80 BACKEND_CONTEXT_PATH=/
WORKDIR ${NGINX_ROOT_DOCUMENT}

COPY ./nginx/default.template.conf /etc/nginx/templates/default.conf.template
EXPOSE 80/tcp