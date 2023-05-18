# FROM centos:7

# ENV HTML_FOLDER=/usr/share/nginx/html

# LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
# LABEL org.vendor.address="Indonesia"

# RUN groupadd www-data && \
# adduser -r -g www-data www-data

# USER www-data:www-data

# WORKDIR ${HTML_FOLDER}

# COPY --chown=www-data:www-data index.html . 

# RUN mkdir root
# WORKDIR root
# COPY index-root.html index.html

# CMD whoami && pwd && ls -al .. && ls -al .


# 
# 
# 
# 
# 
# 
# 
# 


FROM centos:7

ENV HTML_FOLDER=/usr/share/nginx/html

LABEL maintainer="Muhammad Arfan <arfan2173@gmail.com>"
LABEL org.vendor.address="Indonesia"

## Created user
RUN groupadd www-data && \
adduser -r -g www-data www-data

USER www-data:www-data

WORKDIR ${HTML_FOLDER}

VOLUME ${HTML_FOLDER}

CMD whoami && \
pwd && \
ls -l . 