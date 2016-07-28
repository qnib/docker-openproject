FROM qnib/u-consul:14.04

RUN apt-get update \
 && apt-get install -y apt-transport-https \
 && wget -qO - https://deb.packager.io/key | apt-key add - \
 && echo "deb https://deb.packager.io/gh/opf/openproject-ce trusty stable/6" | tee /etc/apt/sources.list.d/openproject.list \
 && apt-get update \
 && apt-get install -y openproject
