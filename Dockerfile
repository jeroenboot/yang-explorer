FROM python:2
MAINTAINER Jeroen (jeroenboot@gmail.com)
EXPOSE 8088

RUN DEBIAN_FRONTEND=noninteractive git clone https://github.com/CiscoDevNet/yang-explorer.git

WORKDIR /yang-explorer/
COPY requirements.txt .
COPY global-config.xml server/static/global-config.xml
RUN bash setup.sh -y
COPY ./start.sh .
CMD bash start.sh
