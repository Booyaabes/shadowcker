FROM ubuntu:bionic

RUN apt-get update && apt-get install -y wget unzip libxss1

RUN wget https://update.shadow.tech/launcher/prod/linux/ubuntu_18.04/Shadow.zip -O shadow.zip

RUN unzip shadow.zip && cd shadow && dpkg -i shadow*.deb; exit 0

RUN apt-get install -f -y

ENTRYPOINT shadow-beta