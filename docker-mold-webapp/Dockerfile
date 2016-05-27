# Nginx web server
FROM nginx

# Maintainer
MAINTAINER zorino <maximilien1er@gmail.com>

# Install intermine dependencies
RUN apt-get update \
 && apt-get install -y curl \
 && cd /opt \
 && curl -L https://github.com/mo-ld/mold-webapp/releases/download/v0.5.1/mold-webapp.v0.5.1.tar.gz | tar xvz \
 && mv mold-webapp/* /usr/share/nginx/html/ \
 && rm -fr mold-webapp && apt-get clean all

COPY nginx-entry.sh /usr/bin/nginx-entry.sh
COPY nginx.conf /etc/nginx/nginx.conf

ENV NGINX_PORT=80

ENTRYPOINT ["nginx-entry.sh"]
