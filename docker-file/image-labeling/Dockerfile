ARG IMAGE_NAME=centos
ARG IMAGE_VERSION=7

FROM ${IMAGE_NAME}:${IMAGE_VERSION}

LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"
LABEL version=${IMAGE_VERSION}

ENV HTML_FORLDER=/usr/share/nginx/html

RUN mkdir -p ${HTML_FORLDER}
COPY *.html ${HTML_FORLDER}
ADD https://github.com/BootcampYoutubeChannel/belajar-docker/archive/refs/tags/07b-copy-resource.tar.gz ${HTML_FORLDER}

# ADD *.tar.gz ${HTML}
ENTRYPOINT ls /usr/share/nginx/html