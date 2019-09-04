FROM python:3.6

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN apt-get install openssl
RUN npm install -g coffeescript less bower

WORKDIR /code

RUN apt-get --assume-yes install libgdal-dev
COPY pip-freeze.txt /code/pip-freeze.txt
RUN pip install -r /code/pip-freeze.txt
RUN pip install uwsgi

RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y libmagic-dev
RUN apt-get install -y postgresql-client
