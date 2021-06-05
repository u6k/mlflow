FROM python:3.8
LABEL maintainer="u6k.apps@gmail.com"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    pip install -U mlflow sqlalchemy psycopg2 boto3

VOLUME /mlflow
WORKDIR /mlflow

EXPOSE 5000

