FROM python:alpine3.11
RUN apk add --no-cache mariadb-dev build-base libffi-dev openssl-dev python3-dev
ADD requirements.txt /tmp/requirements.txt
WORKDIR /tmp/
RUN pip install -r requirements.txt
