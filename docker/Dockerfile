FROM debian:stretch
LABEL maintainer="Anokas Developers <admin@anokas.tech>"
LABEL description="Dockerised AnokasCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
