FROM            ubuntu:latest
MAINTAINER      Bokum Guro <jiojiajiu@gmail.com>

RUN             apt-get update && \
                apt-get -y install build-essential wget python2.7 python2.7-dev subversion libboost-dev
RUN             apt-get -y install libboost-python-dev libboost-thread-dev libboost-system-dev
RUN             ln -s /usr/bin/python2.7 /usr/bin/python
RUN             svn checkout http://pyv8.googlecode.com/svn/trunk/ pyv8
RUN             cd pyv8 && python setup.py build
RUN             python setup.py install
