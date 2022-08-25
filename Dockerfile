FROM debian:stable-slim as build

WORKDIR /app
RUN apt update && apt install -y python3 python3-pip
RUN pip install --upgrade pip && pip install pipenv
RUN rm -rf /var/cache/apt/* && rm -rf /usr/share/doc/ && rm -rf /usr/share/man && rm -rf /usr/share/locale/

ENTRYPOINT ["pipenv"]
