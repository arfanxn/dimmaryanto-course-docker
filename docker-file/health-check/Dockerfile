FROM centos:7

ENV HTML_FOLDER=/usr/share/nginx/html

LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"

RUN yum install epel-release -y && \
yum install nginx -y

WORKDIR ${HTML_FOLDER}

VOLUME ${HTML_FOLDER}

COPY index.html .

CMD ["nginx", "-g", "daemon off;"]

HEALTHCHECK --interval=10s --timeout=3s --retries=1 --start-period=3s \
CMD curl -f http://localhost/ || exit 1