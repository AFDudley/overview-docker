FROM znmeb/overview-docker-developer-jdk-built
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# assumes you've run 'dev' and committed/pushed the image!!

# clean and build the zipfile
WORKDIR /home/overview/overview-server-master
RUN auto/clean-fully.sh
RUN ./build overview-server.zip

# unpack the zipfile
WORKDIR /home/overview
RUN unzip /home/overview/overview-server-master/overview-server.zip

# cleanup
RUN rm -fr /home/overview/overview-server-master
