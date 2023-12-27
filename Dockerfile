FROM docker.io/library/fedora:latest
RUN dnf update -y && \
    dnf install java-17-openjdk -y

RUN mkdir /home/forge-1.20.2
WORKDIR /home/forge-1.20.2

COPY ./forgeEDP/* ./
RUN chmod 777 -R ./run.sh

CMD ["./run.sh"]