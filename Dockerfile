FROM node:latest

# install GRPC
RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get upgrade && \
  apt-get -y install libgrpc-dev git vim --no-install-recommends && \
  apt-get autoremove -y && \
  apt-get autoclean && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install pm2
RUN npm install -g pm2@latest
