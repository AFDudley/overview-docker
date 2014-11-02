FROM ubuntu:trusty
MAINTAINER M. Edward (Ed) Borasky "znmeb@znmeb.net"

# core Overview dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  libreoffice \
  openjdk-7-jre \
  postgresql

# add a non-root user
RUN useradd overview -m
USER overview

# expose the server port
EXPOSE 9000
