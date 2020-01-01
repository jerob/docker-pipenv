FROM python:3-alpine as build

WORKDIR /app
RUN pip install --upgrade pip
RUN pip install pipenv

ENTRYPOINT ["pipenv"]
