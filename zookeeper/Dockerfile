# Select Fedora as base image
FROM sayden/centos-base

MAINTAINER Mario Castro mariocaster@gmail.com

RUN yum install -y tar
RUN wget 'http://apache.rediris.es/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz' -O /tmp/zookeeper.tar.gz
RUN tar -zxvf /tmp/zookeeper.tar.gz
RUN mv /zookeeper-3.4.6 /zookeeper
RUN cp /zookeeper/conf/zoo_sample.cfg /zookeeper/conf/zoo.cfg
RUN echo '1' > /zookeeper/myid
ADD bootstrap.sh /

CMD /bootstrap.sh
