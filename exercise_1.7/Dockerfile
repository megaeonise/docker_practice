FROM ubuntu:24.04
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get -y install curl
COPY script.sh .
RUN chmod +x script.sh
ENTRYPOINT ["./script.sh"]