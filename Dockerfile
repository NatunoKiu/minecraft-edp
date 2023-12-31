FROM ubuntu:latest
RUN apt-get -y update && \
    apt-get -y install openjdk-17-jdk

RUN mkdir /home/forge
WORKDIR /home/forge

CMD ./run.sh