# Debian OS
FROM debian

# Maintainer
MAINTAINER zorino <maximilien1er@gmail.com>

# Install intermine dependencies
RUN apt-get update \
 && apt-get install -y curl \
 && cd /opt \
 && curl -L https://github.com/mo-ld/mold-api/releases/download/v0.2/mold-api.v0.2.tar.gz | tar xvz \
 && cd mold-api \
 && gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
 && \curl -L https://get.rvm.io | bash -s stable \
 && /bin/bash -l -c "rvm requirements && rvm install 2.3.0 && gem install bundler --no-ri --no-rdoc && bundle install" \
 && apt-get clean all

COPY mold-api-entry.sh /opt/mold-api/mold-api-entry.sh

EXPOSE 9393

ENTRYPOINT ["/opt/mold-api/mold-api-entry.sh"]
