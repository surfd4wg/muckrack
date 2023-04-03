# pull official base image
#FROM python:3.11.2-slim-buster
FROM python:3.8.13-slim-buster

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apt-get update \
  && apt-get -y install gcc postgresql \
  && apt-get clean

# install dependencies
RUN pip install --upgrade pip
#RUN pip install pysqlite3
RUN apt-get -qq update
RUN apt-get -qq -y install curl iputils-ping wget vim nano net-tools
RUN apt-get -qq -y install python3-dev default-libmysqlclient-dev gcc
#RUN apt update && 
#RUN apt install -y postgresql-client gunicorn3

#FROM amazon/aws-cli
#RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm" && \
#    yum install -y ./session-manager-plugin.rpm
#RUN sudo yum install -y https://s3.region.amazonaws.com/amazon-ssm-region/latest/linux_amd64/amazon-ssm-agent.rpm
RUN wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb
RUN dpkg -i amazon-ssm-agent.deb
#RUN systemctl status amazon-ssm-agent




COPY ./requirements.txt .
#RUN pip install -r requirements.txt
RUN export PYTHONPATH=/usr/bin/python3 && pip3 install -r requirements.txt

# copy project
COPY . .

# collect static files
RUN python manage.py collectstatic --no-input

RUN python manage.py migrate --no-input 