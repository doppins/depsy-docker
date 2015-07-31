FROM ubuntu:14.04

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get install -y \
  git \
  curl \
  build-essential \
  software-properties-common

RUN apt-get update && apt-get install -y \
  python3 \
  python3-pip

RUN pip3 install -U pip
RUN pip3 install -U virtualenv

RUN curl -sL https://deb.nodesource.com/setup_iojs_2.x | bash -
RUN apt-get update && apt-get install iojs -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
