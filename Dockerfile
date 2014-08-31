FROM ubuntu

ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python python-pip python-dev python-setuptools libevent-2.0-5 libevent-dev nano openssh-server
RUN pip install supervisor ipdb ipython requests gevent

EXPOSE 8080
