FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install git pytho

RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

RUN chmod -R 775 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
