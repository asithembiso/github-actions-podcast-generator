FROM ubuntu:latest

RUN apt-get update && apt-get install -y git && apt-get install -y python3
RUN apt-get install -y python3-yaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

RUN chmod -R 775 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
