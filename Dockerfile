FROM ubuntu:14.04
MAINTAINER L. Deri <deri@ntop.org>

RUN apt-get update
RUN apt-get -y -q install curl
RUN curl -s --remote-name http://www.nmon.net/apt/14.04/all/apt-ntop.deb
RUN sudo dpkg -i apt-ntop.deb
RUN rm -rf apt-ntop.deb

RUN apt-get update
RUN apt-get -y -q install ntopng
RUN ntopng -V