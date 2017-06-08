FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install npm && \
    apt-get -y install unzip && \
    apt-get -y install wget

RUN npm install -g n
RUN n v4.2.0

RUN mkdir /ghost
WORKDIR /ghost
RUN wget https://github.com/TryGhost/Ghost/releases/download/0.11.9/Ghost-0.11.9.zip && \
    unzip Ghost-0.11.9.zip && \
    cp config.example.js config.js && \
    npm install --production

