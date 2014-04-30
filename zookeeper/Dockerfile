# Select Fedora as base image
FROM sayden/centos-base

MAINTAINER Mario Castro mariocaster@gmail.com

# Download Zookeeper
RUN wget 'http://apache.rediris.es/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz' -O /tmp/zookeeper.tar.gz

# Uncompress and rename Zookeeper
RUN tar -zxvf /tmp/zookeeper.tar.gz
RUN mv /zookeeper-3.4.6 /zookeeper

# Copy the default config file to use it
RUN cp /zookeeper/conf/zoo_sample.cfg /zookeeper/conf/zoo.cfg

# Assign a machine id to Zookeeper
RUN echo '1' > /zookeeper/myid

# Add a bootstrap file to leave zookeeper running
ADD bootstrap.sh /




EXPOSE 2181

CMD /bootstrap.sh
