ARG IMAGE_NAME=centos
ARG IMAGE_VERSION=7

FROM ${IMAGE_NAME}:${IMAGE_VERSION}

LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"
LABEL version=${IMAGE_VERSION}

RUN yum install postgresql -y
# RUN psql --version  # this will not work on container
# CMD ["psql", "--version"]
ENTRYPOINT ["psql", "--version"]

