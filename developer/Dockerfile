FROM ubuntu:trusty
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# core Overview dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  libreoffice \
  openjdk-7-jdk \
  postgresql \
  unzip \
  wget \
  zip

# add a non-root user
RUN useradd overview -m
USER overview

# get the repository
WORKDIR /home/overview
RUN git clone \
  https://github.com/overview/overview-server.git \
  overview-server-source

# overwrite Redis with upstream source
WORKDIR /home/overview/overview-server-source/deps/redis/
RUN wget -q http://download.redis.io/releases/redis-2.8.17.tar.gz
RUN rm -fr redis-2.8.17
RUN tar xf redis-2.8.17.tar.gz
RUN rm redis-2.8.17.tar.gz

# expose the server port
EXPOSE 9000

# cue up 'dev'
WORKDIR /home/overview/overview-server-source
CMD [ "./dev" ]
