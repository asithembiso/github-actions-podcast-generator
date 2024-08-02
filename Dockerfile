FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    git \
    python3-pip

RUN pip install pyaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
