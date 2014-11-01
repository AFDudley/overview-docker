FROM developer-built
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# clean and build the zipfile
USER overview
WORKDIR /home/overview/overview-server-source
RUN auto/clean-fully.sh
RUN ./build overview-server.zip

# unpack the zipfile
WORKDIR /home/overview
RUN unzip /home/overview/overview-server-source/overview-server.zip

# get ready to run
WORKDIR /home/overview/overview-server
CMD [ "./run" ]
