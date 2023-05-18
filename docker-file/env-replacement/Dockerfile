ARG IMAGE_VERSION=7
ARG IMAGE_NAME=centos
FROM ${IMAGE_NAME}:${IMAGE_VERSION}
ENV HTML_DIR=/usr/share/nginx/html
RUN mkdir -p ${HTML_DIR} 
RUN echo "<html><head><title>Halo World</title></head><body><h3>it's Works! ${IMAGE_NAME}:${IMAGE_VERSION} ${HTML_DIR}} </h3></body></html>" > ${HTML_DIR}/index.html
RUN echo ${HTTP_PROXY} > ${HTML_DIR}/http-proxy.txt
# ENTRYPOINT ["cat", "/usr/share/nginx/html/index.html"] 
ENTRYPOINT cat /usr/share/nginx/html/http-proxy.txt
# ENTRYPOINT cat /etc/redhat-release