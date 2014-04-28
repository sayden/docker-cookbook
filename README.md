#various-dockerfiles
===================

Various Dockerfiles to achieve many types of dockers

## ABOUT DOCKER
Docker is an open-source project to easily create lightweight, portable, self-sufficient containers from any application. The same container that a developer builds and tests on a laptop can run at scale, in production, on VMs, bare metal, OpenStack clusters, public clouds and more

* Website: https://www.docker.io/

## ZOOKEEPER
Zookeeper is a server to make easy the communication between distributed applications. It's mandatory in Apache Storm.

## STORM-SUPERVISOR
This Docker is intended to user as a Storm-supervisor node to use in Storm clusters

## HADOOP-DATANODE
This Docker is intended to be a DataNode-Tasktracker node for Hadoop clusters. It's difficulty basically resides on the
port configuration and exposition

## UBUNTU-BASE
Ubuntu base takes the 12.04 version from the official repository and add it some missing features. Basically:
- SSH server
- TAR
- wget
- Java 1.6
- sudo
- nano

## CENTOS-BASE
Centos base, as Ubuntu base, is the fresh installation from the official Centos images in the Docker index with:
- SSH server
- tar
- wget
- Java 1.6
- sudo
- nano

## PORTIA
Portia is an awesome open source new web-scraping tool based on scrapy for easy and visual data mining of structured data in web pages.

* Webpage: http://blog.scrapinghub.com/2014/04/01/announcing-portia/
* Github project: https://github.com/scrapinghub/portia

This docker contains all the packages neccesary to run portia on it's default settings

To use it, simply run 
>docker run sayden/portia /opt/portia/start-portia.sh

Enjoy!
