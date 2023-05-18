FROM centos:7
ENV HTML=/usr/share/nginx/html
RUN mkdir -p ${HTML} && \
echo "<html><head><title>Halo World</title></head><body><h3>it's Works!</h3></body></html>" > ${HTML}/index.html
ENTRYPOINT ["cat", "/usr/share/nginx/html/index.html"] 