FROM python:3.10-slim-buster

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

RUN chmod -R 775 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
