FROM python:3-alpine as build

WORKDIR /app
RUN pip install --upgrade pip
RUN pip install pipenv
RUN rm -rf /usr/share/doc/ && rm -rf /usr/share/man && rm -rf /usr/share/locale/

ENTRYPOINT ["pipenv"]
