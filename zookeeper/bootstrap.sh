#!/bin/bash

/zookeeper/bin/zkServer.sh start
tail -f /var/log/lastlog
