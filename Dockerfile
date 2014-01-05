FROM ubuntu:12.04
MAINTAINER Tomas Aparicio "https://github.com/frontstack/docker"

RUN apt-get install -y git gcc make wget
RUN wget --no-check-certificate https://sourceforge.net/projects/frontstack/files/latest/download -O ~/frontstack-latest.tar.gz
RUN tar xvfz ~/frontstack-latest.tar.gz -C ~/fronstack
RUN echo '[ -f ~/fronstack/scripts/setenv.sh ] && . ~/fronstack/scripts/setenv.sh' >> ~/.bash_profile
RUN bash ~/fronstack/scripts/setenv.sh
RUN ~/frontstack/node/bin/npm install -g http-server

RUN mkdir ~/www
RUN echo 'Hello World powered by FrontStack' > ~/www/index.html

# custom commands
#ADD app.js ~/www/app.js
CMD ["~/frontstack/node/bin/http-server", "~/www", "-p", "3000"]