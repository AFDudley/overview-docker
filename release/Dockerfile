FROM developer-built
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# clean and build the zipfile
WORKDIR /home/overview/overview-server-master
USER overview
RUN auto/clean-fully.sh
RUN ./build overview-release.zip

# unpack the zipfile
WORKDIR /home/overview
RUN unzip /home/overview/overview-server-master/overview-release.zip

# cleanup
RUN rm -fr /home/overview/overview-server-master
