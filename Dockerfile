FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get install -y \
              supervisor \
              vim \
              nodejs \
              nginx

ADD . /opt/pavia/
WORKDIR /opt/pavia

CMD ["node","server.js"]