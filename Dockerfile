FROM ubuntu:latest

RUN apt-get update && apt-get install -u \
    python3.10 \
    python3-pip \
    git

RUN pip3 install pyaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
