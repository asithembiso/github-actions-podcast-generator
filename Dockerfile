FROM python:3.10-slim-buster

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

RUN chmod -R 775 entrypoint.sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
