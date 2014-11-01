FROM ubuntu:trusty
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# core Overview dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  libreoffice \
  postgresql \
  unzip \
  wget \
  zip

# add a non-root user
RUN useradd overview -m

# expose the server port
EXPOSE 9000
