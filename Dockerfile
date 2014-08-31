FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get update --fix-missing
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get install -y python python-pip python-dev python-setuptools libevent-2.0-5 libevent-dev nano openssh-server
RUN pip install supervisor ipdb ipython requests gevent

EXPOSE 8080
