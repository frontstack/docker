FROM ubuntu:12.04
MAINTAINER Tomas Aparicio

RUN apt-get install -y git gcc make nano
RUN wget -O http://nodejs.org/dist/v0.10.24/node-v0.10.24-linux-x64.tar.gz | tar -C /usr/local/ --strip-components=1 -zxv
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nodejs
#RUN apt-get install -y nodejs=0.6.12~dfsg1-1ubuntu1
RUN mkdir /var/www

ADD app.js /var/www/app.js

CMD ["/usr/bin/node", "/var/www/app.js"]