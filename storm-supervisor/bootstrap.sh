#!/bin/bash

/storm/bin/storm supervisor
tail -f /var/log/lastlog
