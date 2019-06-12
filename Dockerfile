FROM ubuntu:16.04
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y  build-essential
EXPOSE 80/tcp 443/tcp
ENTRYPOINT ./*.out 0.0.0.0 80 .
