ARG IMAGE_NAME=centos
ARG IMAGE_VERSION=7

FROM ${IMAGE_NAME}:${IMAGE_VERSION}

LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"
LABEL version=${IMAGE_VERSION}

#  Postgres example
# RUN yum install postgresql -y
# ENTRYPOINT ["psql"]
# CMD ["--help"]

RUN yum install epel-release -y && \
yum install nginx -y && \
yum clean all

ENTRYPOINT [ "nginx", "-g", "daemon off;"]