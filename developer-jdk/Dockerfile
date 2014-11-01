FROM znmeb/overview-docker-core-image
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# Java Development Kit
RUN apt-get update && apt-get install -y \
  openjdk-7-jdk

# get the repository
WORKDIR /home/overview
RUN wget -q https://github.com/overview/overview-server/archive/master.zip
RUN unzip master.zip
RUN rm master.zip

# overwrite Redis with upstream source
WORKDIR /home/overview/overview-server-master/deps/redis/
RUN wget -q http://download.redis.io/releases/redis-2.8.17.tar.gz
RUN rm -fr redis-2.8.17
RUN tar xf redis-2.8.17.tar.gz
RUN rm redis-2.8.17.tar.gz

# give the non-root user their home
RUN chown -R overview:overview /home/overview
