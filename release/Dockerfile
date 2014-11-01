FROM developer-built
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# clean and build the zipfile
USER overview
WORKDIR /home/overview/overview-server-master
RUN auto/clean-fully.sh
RUN ./build overview-release.zip

# unpack the zipfile
WORKDIR /home/overview
RUN unzip /home/overview/overview-server-master/overview-release.zip

# get ready to run
WORKDIR /home/overview/overview-release
CMD [ "./run" ]
