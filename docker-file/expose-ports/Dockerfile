ARG IMAGE_NAME=centos
ARG IMAGE_VERSION=7

FROM ${IMAGE_NAME}:${IMAGE_VERSION}

ENV HTML_FOLDER=/usr/share/nginx/html

LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"

RUN yum install epel-release -y && \
yum install nginx -y && \
yum clean all
RUN sed -i "s|80|8080|g" /etc/nginx/nginx.conf
COPY *.html ${HTML_FORLDER}
COPY nginx-ssl.conf ${NGINX_CONF}

ENTRYPOINT [ "nginx", "-g", "daemon off;"]
EXPOSE  8080/tcp 443/tcp