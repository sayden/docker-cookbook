# Portia Docker Container

##Short Description
Portia is an awesome open source new web-scraping tool based on scrapy for easy and visual data mining of structured data in web pages.

##Full Description
* Article: http://blog.scrapinghub.com/2014/04/01/announcing-portia/
* Github project: https://github.com/scrapinghub/portia

This docker contains all the packages neccesary to run portia on it's default settings

### Docker Index Link
https://index.docker.io/u/sayden/portia/


	# Select Fedora as base image
	FROM fedora

	MAINTAINER Mario Castro mariocaster@gmail.com

	# Install required dependencies and GIT to clone portia project
	RUN yum install -y --nogpgcheck gcc 
	RUN yum install -y --nogpgcheck python
	RUN yum install -y --nogpgcheck git
	RUN yum install -y --nogpgcheck python-pip 
	RUN yum install -y --nogpgcheck python-devel 
	RUN yum install -y --nogpgcheck twisted python-twisted-runner 
	RUN yum install -y --nogpgcheck python-lxml

	# Install required Portia package
	RUN pip install virtualenv
	RUN pip install loginform
	RUN pip install jsonschema
	RUN pip install scrapy
	RUN pip install -e git://github.com/scrapy/scrapely.git\#egg=scrapely

	# Clone portia project from github
	RUN git clone https://github.com/sayden/portia.git /opt/portia

	# "Compile"? slybot
	RUN pip install -e /opt/portia/slybot

	# Expose the port used by portia
	EXPOSE 9001

	# Start the web server
	ENTRYPOINT ["/opt/portia/start-portia.sh"]