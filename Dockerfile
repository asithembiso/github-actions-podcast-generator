FROM ubuntu:22.04  

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3.10-pip \
  git \
  libffi-dev

RUN pip3.10 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
