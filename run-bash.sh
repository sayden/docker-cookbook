#! /bin/bash

if [ "$#" -ne 1 ]; then
#sudo docker run -i -t #1 /bin/bash
	echo 'Not enough arguments';
else
	sudo docker run -i -t $1 /bin/bash
fi
