FROM ubuntu:12.04
MAINTAINER Tomas Aparicio "https://github.com/frontstack/docker"

# packages provisioning
RUN apt-get install -y git gcc make wget
WORKDIR /opt

# FrontStack installation
RUN wget --no-check-certificate https://sourceforge.net/projects/frontstack/files/latest/download -O frontstack-latest.tar.gz
RUN mkdir frontstack && tar xvfz frontstack-latest.tar.gz -C frontstack
RUN rm -f frontstack-latest.tar.gz
RUN frontstack/node/bin/npm install -g http-server

# sample app
RUN mkdir www
RUN echo 'Hello World powered by FrontStack' > www/index.html

# start a HTTP server
EXPOSE 3000
CMD ["/opt/frontstack/node/bin/node", "/opt/frontstack/packages/node/bin/http-server", "-p", "3000", "/opt/www" ]